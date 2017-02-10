class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :price, :presence => true
  validates :made_from, :presence => true
end
