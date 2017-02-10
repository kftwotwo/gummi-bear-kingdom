require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
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
    click_link 'Edit'
    fill_in 'Name', :with => 'candy2'
    fill_in 'Price', :with => '213'
    fill_in 'Made from', :with => 'USA'
    fill_in 'Picture', :with => 'ME'
    click_on 'Update Product'
    expect(page).to have_content 'candy2'
  end
end
