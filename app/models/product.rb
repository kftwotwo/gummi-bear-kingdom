class Product < ActiveRecord::Base
  has_many :reviews
  belongs_to :user
  validates :name, :presence => true
  validates :price, :presence => true
  validates :made_from, :presence => true
  validates :picture, :presence => true
end
