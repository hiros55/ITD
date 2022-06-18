require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'before_action' do
    it { is_expected.to use_before_action(:set_user) }
  end

  describe 'GET #index' do
    let!(:user) { create(:user) }
    let!(:achivement) { create(:achivement) }
    context '一覧' do
      before do
        get :index
      end

      it 'result' do
        is_expected.to respond_with(:success)
        is_expected.to render_with_layout(:application)
        is_expected.to render_template(:index)
        expect(assigns[:user].name).to eq 'test_name'

        expect(Achivement.first.name).to eq 'test_name'
      end
    end
  end

  describe 'GET #edit' do
    let(:user) { create(:user) }

    before do
      get :edit, params: { id: user.id }
    end

    it 'result' do
      # response
      expect(subject).to respond_with(:success)
      expect(subject).to render_with_layout(:application)
      expect(subject).to render_template(:edit)

      expect(assigns[:user]).to eq user
    end
  end

  describe 'PATCH#update'
  let!(:user) { create(:user) }
  context '入力エラー無し' do
    context '名前あり' do
      before do
        update_user_params = attributes_for(:user, name: 'name', birthplace: 'birthplace')
        patch :update, params: { id: user.id, user: update_user_params }
      end

      it 'result' do
        is_expected.to respond_with(:redirect)
        is_expected.to redirect_to(root_path)

        expect(assigns[:user].persisted?).to be_truthy

        expect(User.first.name).to eq 'name'
        expect(User.first.birthplace).to eq 'birthplace'
      end
    end
  end

  context '入力エラー有り' do
    context '名前なし' do
      before do
        update_user_params = attributes_for(:user, name: nil, birthplace: 'birthplace')
        patch :update, params: { id: user.id, user: update_user_params }
      end

      it 'result' do
        expect(subject).to respond_with(:success)
        expect(subject).to render_with_layout(:application)
        expect(subject).to render_template(:edit)

        expect(User.first.name).to eq 'test_name'
        expect(User.first.birthplace).to eq 'test_birthplace'
      end
    end
  end
end
