class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end