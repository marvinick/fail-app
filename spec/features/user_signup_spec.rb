require 'spec_helper'

feature "User signup" do
  scenario "User sign up with valid info" do
    visit users_path
    fill_in "Name", with: "Marvin"
    fill_in "Email", with: "daddy@daddy.com"
    fill_in "Job Title", with: "chef"
    fill_in "Birthday", with: "12/12/1991"
    fill_in "Years of experience", with: "19 years"
    fill_in "Education", with: "High School"
    fill_in "Story", with: "I want to become a sushi chef"
    click_button "Register"
    expect(page).to have_content @users
  end
end

