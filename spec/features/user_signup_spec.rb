require 'spec_helper'

feature "User signup" do
  scenario "User sign up with valid info" do
    visit new_user_path
    fill_in "Name", with: "Marvin"
    fill_in "Email", with: "daddy@daddy.com"
    fill_in "Password", with: "asdasf"
    click_button "Sign up"
    expect(page).to have_content @users
  end

  scenario "User sign up with invalid info"
end

