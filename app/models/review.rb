class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :comment, :presence => true
end
