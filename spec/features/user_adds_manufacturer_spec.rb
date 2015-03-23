require 'rails_helper'

feature "Adding a manufacturer" do

  scenario 'user successfully adds a manufacturer' do
    visit new_car_path

    fill_in "Name", with: "Ford"
    fill_in "Country", with: "USA"

    click_button "Submit"

    visit manufacturers_path

    expect(page).to have_content("Manufacturer added")

  end

  scenario 'user fails to add a manufacturer' do
    visit new_car_path

    fill_in "Name", with: ""
    fill_in "Country", with: ""

    click_button "Submit"

    expect(page).to have_content("Failed to add manufacturer")

  end

end
