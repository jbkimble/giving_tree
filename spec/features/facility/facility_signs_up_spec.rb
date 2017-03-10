require 'rails_helper'

describe 'as a facility owner' do
  scenario 'I create an account' do
    visit root_path
    click_on "Facility Signup"

    expect(current_path).to eq(facility_signup_path)

    fill_in "Name", with: "Saint Judes"
    fill_in "Address", with: "18800 Spark St.  Suite 4520"
    fill_in "City", with: "Seattle"
    fill_in "State", with: "WA"
    fill_in "Zipcode", with: "98006"
    fill_in "Phone", with: "2065558888"
    fill_in "Email", with: "saintJ@saintjudes.org"
    fill_in "Password", with: "iamatest"
    click_on "Create Free Account"

    expect(current_path).to eq(facility_dashboard_path(Facility.last))
    expect(page).to have_content("Welcome Saint Judes! Start onboarding staff and patients below with our 'slice of pie onboarding'")
  end

  scenario 'I fail to enter my information correctly' do

  end
end
