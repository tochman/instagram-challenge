require 'rails_helper'

require_relative 'helpers.rb'
include Helpers

feature 'photos' do
  context 'no photos have been added' do
    scenario 'should show an upload button' do
      sign_up
      expect(page).to have_content 'no photos!'
      expect(page).to have_button 'Upload a photo'
    end
  end

  context 'creating photos when signed in' do
    scenario 'gives user a form to add photo, displays caption' do
      sign_up
      post_photo
      expect(current_path).to eq '/photos'
      expect(page).to have_content 'a lion'
      expect(page).to have_selector 'img'
    end
  end

  context 'creating photos when not signed in' do
    scenario 'does not allow posting of photos unless logged in' do
      visit '/photos'
      expect(page).not_to have_button 'Upload a photo'
    end
  end
end