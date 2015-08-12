require 'rails_helper'

feature 'liking photos' do
  before do
    pic = Photo.create
  end

  scenario 'a user can like a photo and update the likes count' js: true do
    visit '/'
    click_link 'like'
    expect(page).to have_content('1 like')
  end
end