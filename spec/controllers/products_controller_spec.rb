require 'rails_helper'

describe Product do
  it "will create product" do
    # user = FactoryGirl.create(:user)
    # product = FactoryGirl.new(:product)
    user = User.create(:first_name => 'Kevin' , :last_name => 'Finley', :email => 'kftwotwo@gmail.com', :password_digest => 'Kevin', :pic => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSkBpvJPlfc4URnpGHYZrL_rvUIpIgsAwoAwdvXQau1Dqihjbrh')

    product = Product.new(:name => 'Candy', :price => '1', :made_from => 'china', :picture => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSkBpvJPlfc4URnpGHYZrL_rvUIpIgsAwoAwdvXQau1Dqihjbrh', :user_id => '1')


    product.create should eq 
  end
end
