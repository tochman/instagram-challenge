require 'rails_helper'

feature 'commenting' do
  before {Photo.create}

  scenario 'allows user to leave comment' do

    visit('/')
    click_link 'leave comment'
    fill_in "comment", with: "nice pic"
    click_button 'post comment'

    expect(current_path).to eq '/'
    expect(page).to have_content('nice pic')

  end

end