FactoryGirl.define do
  factory(:user) do
    first_name('Kevin')
    last_name('Kevin')
    email('kftwotwo@gmail.com')
    password_digest('Kevin')
    pic('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSkBpvJPlfc4URnpGHYZrL_rvUIpIgsAwoAwdvXQau1Dqihjbrh')
  end
  
  factory(:product) do
    name('Candy')
    price('12.50')
    made_from('China')
    picture('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSkBpvJPlfc4URnpGHYZrL_rvUIpIgsAwoAwdvXQau1Dqihjbrh')
    user_id('1')
  end
end
