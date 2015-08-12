module Helpers

  def sign_up
    visit '/'
    click_link('Sign up')
    fill_in('Email', with: 'test@test.es')
    fill_in('Password', with: 'pAssw0rd')
    fill_in('Password confirmation', with: 'pAssw0rd')
    click_button('Sign up')
  end

  def post_photo
    click_button 'Upload a photo'
    fill_in 'Caption', with: 'a lion'
    attach_file 'Image', 'spec/features/lion.jpg'
    click_button 'Create photo'
  end

end