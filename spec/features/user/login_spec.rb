require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  scenario 'user successfully logs in', js: true do
    user = FactoryBot.create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    find('#login2', visible: false).click
    expect(page).to have_text 'Signed in successfully'
    # save_and_open_screenshot
  end
end
