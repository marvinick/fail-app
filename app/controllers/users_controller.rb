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
      session[:user_id] = @user.id
      flash[:notice] = "You just signed up"
      redirect_to root_path
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
    params.require(:user).permit(:name, :email, :job_title, :birthday, :story, :education, :password)
  end
end