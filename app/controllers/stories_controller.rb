class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @story = Story.new
    @users = User.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end

  def edit
    @story = Story.find(params[:id])
    @user = User.find(params[:id])
  end
  private

  def story_params
    params.require(:story).permit(:story)
  end

end