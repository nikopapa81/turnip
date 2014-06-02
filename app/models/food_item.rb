class FoodItem < ActiveRecord::Base

belongs_to :food_category
has_many :activity_lines

validates :food_item, :presence => true, :uniqueness => true
end
