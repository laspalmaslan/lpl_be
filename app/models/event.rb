class Event < ActiveRecord::Base
  attr_accessible :description, :event_time
  belongs_to :day
end
