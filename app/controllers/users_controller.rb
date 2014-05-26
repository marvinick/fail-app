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
      redirect_to user_path(@users)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
   @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.save
      flash[:notice] = "Your profile has been updated"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :job_title, :birthday, :story, :education, :password)
  end
end