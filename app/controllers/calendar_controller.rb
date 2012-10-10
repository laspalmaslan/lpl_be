class CalendarController < ApplicationController
  def index
    @days = Day.all
  end
end
