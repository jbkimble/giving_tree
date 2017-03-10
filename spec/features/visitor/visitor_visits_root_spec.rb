require 'rails_helper'

describe 'As a visitor' do
  scenario 'I visit root and see correct information' do
    visit root_path

    expect(page).to have_content("Welcome To Giving Tree")
    expect(page).to have_content("Login")
    expect(page).to have_content("Create Account")
    expect(page).to_not have_content("Logout")
  end
end
