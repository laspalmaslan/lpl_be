class CalendarController < ApplicationController
  def index
    @days = Day.order('day_date')
  end
end
