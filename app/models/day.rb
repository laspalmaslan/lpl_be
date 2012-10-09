class Day < ActiveRecord::Base
  attr_accessible :day_date, :events_attributes
  has_many :events
  accepts_nested_attributes_for :events 
end




