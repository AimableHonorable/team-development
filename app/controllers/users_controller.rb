class UsersController < ApplicationController
  before_action :set_user
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path, notice: I18n.t('views.messages.update_profile')
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :icon, :keep_team_id)
  end
end
