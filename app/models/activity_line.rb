class ActivityLine < ActiveRecord::Base

  belongs_to :activity_categories

  validates :activity_line, :presence => true
end
