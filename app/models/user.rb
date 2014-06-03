class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :activity_lines
  has_many :unit_of_measures, :through => :activity_lines, :source => :activity_line_id
  has_many :food_categories, :through => :activity_lines, :source => :activity_line_id
  has_many :activity_categories, :through => :activity_lines, :source => :activity_line_id
  has_many :food_items

end
