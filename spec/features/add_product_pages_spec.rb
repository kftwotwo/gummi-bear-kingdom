require 'rails_helper'

describe "add product" do
  before(:each) do
    visit signup_path
    fill_in 'First name', :with => 'Kevin'
    fill_in 'Last name', :with => 'Finley'
    fill_in 'Email', :with => 'candy@candy.com'
    fill_in 'Pic', :with => 'piture'
    fill_in 'Password', :with => 'candy'
    click_on 'Create User'
  end

  it "adds a new product" do
    visit new_product_path
    fill_in 'Name', :with => 'candy'
    fill_in 'Price', :with => '213'
    fill_in 'Made from', :with => 'USA'
    fill_in 'Picture', :with => 'ME'
    click_on 'Create Product'
    expect(page).to have_content 'candy'
  end

  it "gives error when nothing is entered" do
    visit new_product_path
    fill_in 'Name', :with => ''
    fill_in 'Price', :with => ''
    fill_in 'Made from', :with => ''
    fill_in 'Picture', :with => ''
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
