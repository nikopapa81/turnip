class FoodItem < ActiveRecord::Base

belongs_to :food_category
has_many :activity_lines
has_many :unit_of_measures
has_many :users

validates :food_item, :presence => true, :uniqueness => true
end
