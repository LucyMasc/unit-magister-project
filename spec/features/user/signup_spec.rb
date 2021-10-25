require 'rails_helper'

RSpec.describe 'Signup', type: :feature do
  scenario 'user sucessfully signs up', js: true do
    visit new_user_session_path
    click_link 'Sign up'
    fill_in 'Email', with: 'test1@test.com'
    fill_in("Password", with: '123456', match: :prefer_exact)
    fill_in("Password confirmation", with: '123456', match: :prefer_exact)
    click_button 'Sign up'
    expect(page).to have_selector '#user-settings'
  end
end
