class UsersController < ApplicationController

  before_action :authenticate_user!
  
  def show
    @user = current_user
  end

  def edit
    # 編集するユーザーが本人じゃない場合はユーザーページにリダイレクトする
    # これをしないと、ログインさえしていれば、"/users/5/edit"みたいな適当なurlにアクセスすると、他の人のプロフィール編集画面を表示できてしまう
     unless @user == current_user
       redirect_to user_path(@user)
     end
  end

  def current_user_params
    params.permit(:name, :email, :password, :image, :intoroduction)
  end

  def profile
    @user = current_user
  end

  def profile_edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(params.require(:user).permit(:name, :image, :introduction))
      flash[:notice] = "更新しました"
      redirect_to:users
    else
      flash[:alert] = "更新できません"
      render "edit"
    end
  end

  private
  def user_params
    params.permit(:name, :email, :password, :intrduce, :image)
  end

end
