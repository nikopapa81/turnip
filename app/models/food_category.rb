class FoodCategory < ActiveRecord::Base

  has_many :food_items
  has_many :activity_lines

  validates :food_category, :presence => true, :uniqueness => true
end
