require 'rails_helper'

RSpec.describe 'Logout', type: :feature do
  scenario 'user successfully logs out', js: true do
    user = FactoryBot.create(:user)
    login_as(user)
    # user is on the homepage
    visit root_path
    # User clicks on the dropdown button
    find('#user-settings').click
    click_link 'Log out'
    expect(page).to have_text "You need to sign in or sign up before continuing."
  end
end
