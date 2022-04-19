require 'rails_helper'

RSpec.describe 'Index features' do
  context 'check root path' do
    it 'visit index' do
      visit root_path
      expect(page).to have_content("Library", count: 1)
    end
  end

  let!(:user) { User.create(email: 'stanri@mail.com', password: 3132523 ) }
  context 'creation check user' do
    it 'visit Log in' do
      visit root_path
      click_link('Log In')
      fill_in 'user_email', with: 'stanri@mail.com'
      fill_in 'user_password', with: 3132523
      click_button 'Log in'
    end
  end
end