require 'spec_helper'

feature "User signup" do
  scenario "User sign up with valid info" do
    visit users_path
  end
end