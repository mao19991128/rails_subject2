class UsersController < ApplicationController

  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user.update_attributes(current_user_params)
      flash[:notice] = "保存しました"
    else
      flash[:alert] = "更新できません"
    end
    redirect_to edit_user_registration_path
  end

  def current_user_params
    params.require(:user).permit(:name, :email, :password, :image, :intoroduction)
  end

  def profile
    @user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :intrduce, :image)
  end

end
