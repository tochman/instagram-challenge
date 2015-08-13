require 'rails_helper'

require_relative 'helpers.rb'
include Helpers

feature 'liking photos' do
  before do
    sign_up
    post_photo
  end

  scenario 'a user can like a photo and update the likes count', js: true do
    visit '/'
    click_link 'like'
    expect(page).to have_content('1 like')
  end
end