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
      redirect_to user_path(@user)
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

    if @user.update(user_params)
      flash[:notice] = "Your profile has been updated"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def remove
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to stories_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :job_title, :birthday, :story, :education, :password, :image, :image2, :image3, :image4, :image5)
  end
end