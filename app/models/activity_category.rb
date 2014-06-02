class ActivityCategory < ActiveRecord::Base

has_many :activity_lines
has_many :food_items, :through => :activity_lines, :source => :activity_line_id
has_many :food_categories, :through => :activity_lines, :source => :activity_line_id

validates :activity_category, :presence => true, :uniqueness => true

end
