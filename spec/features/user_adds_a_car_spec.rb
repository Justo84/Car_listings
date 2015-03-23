require 'rails_helper'

feature "Adding a car" do

scenario 'user successfully adds a car' do
  visit new_car_path

  fill_in "Year", with: "1923"
  fill_in "Color", with: "Blue"
  fill_in "Mileage", with: "12345"
  fill_in "Description", with: "Great car, lots of dents.  Doesn't run"

  click_button "Submit"

  visit root_path

  expect(page).to have_content("Car added")

end

scenario 'user fails to addd a car' do
  visit new_car_path

  fill_in "Year", with: ""
  fill_in "Color", with: ""
  fill_in "Mileage", with: ""
  fill_in "Description", with: "Great car, lots of dents.  Doesn't run"

  click_button "Submit"

  expect(page).to have_content("Failed to add car")

end

end
