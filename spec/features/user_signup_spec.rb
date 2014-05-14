require 'spec_helper'

feature "User signup" do
  scenario "User sign up with valid info" do
    visit users_path
    fill_in "Name", with: "Marvin"
    fill_in "Email", with: "daddy@daddy.com"
    click_button "Register"
    expect(page).to have_content @users
  end
end