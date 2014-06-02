class UnitOfMeasure < ActiveRecord::Base

validates :unit_of_measure, :presence => true, :uniqueness => true
end
