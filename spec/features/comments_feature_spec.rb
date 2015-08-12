require 'rails_helper'

require_relative 'helpers.rb'
include Helpers

feature 'commenting' do
  before {Photo.create}

  scenario 'can leave a comment' do
    visit('/')
    click_link 'leave comment'
    fill_in 'Remark', with: "nice pic"
    click_button 'post comment'
    expect(current_path).to eq '/'
    expect(page).to have_content('nice pic')
  end
end