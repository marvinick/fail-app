require 'spec_helper'

feature 'user enters story' do
  scenario 'user enters the right input for stories' do
    visit stories_path
    fill_in "Story", with: "Text"
    click_button "Tell your Story"
    expect(page).to have_content @stories
  end
end