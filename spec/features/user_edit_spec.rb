require 'spec_helper'

feature "user edit" do
  scenario "user update info" do
    visit stories_path
    visit users_path
    click_button "Update"
    expect(page).to have_content @users
  end
end