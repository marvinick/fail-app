class EmployersController < ApplicationController

def index
  @employers = Employer.all
end

def new
  @employer = Employer.new
end

def create
  @employer = Employer.new(employer_params)

  if @employer.save
    flash[:notice] = "You've registered"
    redirect_to employer_path
  else
    render :new
  end
end

def show
end

def edit
end

def update
end

private

def employers_params
  params.require(:employer).permit(:name, :email)
end