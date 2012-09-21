class Day < ActiveRecord::Base
  attr_accessible :day_date
  has_many :events
end
