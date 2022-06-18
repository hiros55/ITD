class AchivementsController < ApplicationController
  before_action :set_achivement, only: %i[create edit update destroy]
  def edit; end

  def update
    if @achivement.update(achivement_params)
      redirect_to root_path, flash: { success: '実績の更新に成功しました。' }
    else
      redirect_to root_path, flash: { danger: '実績の更新に失敗しました。' }
    end
  end

  def destroy
    @achivement.destroy!
    redirect_to root_path, notice: '実績を削除しました'
  end

  def create
    @achivement = Achivement.new(achivement_params)
    if @achivement.save
      redirect_to root_path, flash: { success: '実績の作成に成功しました。' }
    else
      redirect_to root_path, flash: { danger: '実績の作成に失敗しました。' }
    end
  end

  private

  def set_achivement
    @achivement = Achivement.find_by(user_id: params[:user_id], id: params[:id])
  end

  def achivement_params
    params.require(:achivement).permit(:startdate, :enddate, :name, :achitype, :user_id)
  end
end
