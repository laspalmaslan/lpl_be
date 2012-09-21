class Event < ActiveRecord::Base
  attr_accessible :day_time, :description, :event_time
  belongs_to :day
end
