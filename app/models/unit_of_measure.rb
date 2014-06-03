class UnitOfMeasure < ActiveRecord::Base

has_many :users
has_many :food_items
has_many :food_categories, :through => :activity_lines, :source => :activity_line_id
has_many :activity_categories, :through => :activity_lines, :source => :activity_line_id
has_many :activity_lines


validates :unit_of_measure, :presence => true, :uniqueness => true

end
