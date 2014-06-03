class FoodCategory < ActiveRecord::Base

  has_many :food_items
  has_many :activity_lines

  has_many :users, :through => :activity_lines, :source => :activity_line_id
  has_many :unit_of_measures, :through => :activity_lines, :source => :activity_line_id
  has_many :activity_categories, :through => :activity_lines, :source => :activity_line_id

  validates :food_category, :presence => true, :uniqueness => true

end
