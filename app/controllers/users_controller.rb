class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]
  def index
    @user = User.first
    @achivement = Achivement.new
    @achivements = Achivement.all.order(startdate: 'DESC')
    @pick_articles = Article.where(is_highright: true).limit(3)
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to root_path, flash: { success: 'ユーザーデータの更新に成功しました。' }
    else
      flash[:danger] = @user.errors.full_messages
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :birthday, :birthplace, :purpose, :paper, :linkedin, :twitter,
                                 :carrier_high, :carrier_univ, :carrier_univ_mas,
                                 :carrier_work, :skill, :avatar, :name_en, :birthplace_en, :purpose_en,
                                 :carrier_high_en, :carrier_univ, :carrier_univ_mas,
                                 :carrier_work, :skill)
  end
end
