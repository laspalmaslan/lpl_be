#coding: UTF-8
require 'spec_helper'

describe "check thecreation" do
  before "create the day and event fields" do
    @admin = FactoryGirl.create :admin
    log_in(@admin)
    visit new_manage_calendar_path
    select '2012', :from => 'day_day_date_1i'
    select 'November', :from => 'day_day_date_2i'
    select '1', :from => 'day_day_date_3i'
    fill_in "day_events_attributes_0_description", :with => "Testing"
    select '23', :from => 'day_events_attributes_0_event_time_4i'
    select '06', :from => 'day_events_attributes_0_event_time_5i'
    click_on "Create Day"
  end
  it "check day creation" do
    event = Event.where(description: "Testing").first
    event.day.day_date.strftime("%Y/%m/%d").should == "2012/11/01"
    event.event_time.strftime("%H:%M").should == "23:06"
  end
end
