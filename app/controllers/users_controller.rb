private
def user_params
  params.require(:user).permit(:name, :email, :image, :password, :introduction)
end