require 'rails_helper'

describe "the delete product process" do
  it "removes product" do
    visit signup_path
    fill_in 'First name', :with => 'Kevin'
    fill_in 'Last name', :with => 'Finley'
    fill_in 'Email', :with => 'candy@candy.com'
    fill_in 'Pic', :with => 'piture'
    fill_in 'Password', :with => 'candy'
    click_on 'Create User'
    visit new_product_path
    fill_in 'Name', :with => 'candy'
    fill_in 'Price', :with => '213'
    fill_in 'Made from', :with => 'USA'
    fill_in 'Picture', :with => 'ME'
    click_on 'Create Product'
    click_link 'Delete'
    expect(page).to have_content ''
  end
end
