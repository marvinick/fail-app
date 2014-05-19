class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :job_title, :birthday, :story, :education, :password_digest)
  end
end