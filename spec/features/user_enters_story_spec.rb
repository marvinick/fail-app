require 'spec_helper'

feature 'user enters story' do
  scenario 'user enters the right input for stories' do
    visit stories_path
  end
end