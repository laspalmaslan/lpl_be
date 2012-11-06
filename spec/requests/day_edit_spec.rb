#coding: UTF-8
require 'spec_helper'

describe "Check the edition" do
  before "Edit the day and event fields" do
    @day = FactoryGirl.create :day
    event = FactoryGirl.create :event
    @day.events << event
    @admin = FactoryGirl.create :admin
    log_in(@admin)
    visit edit_manage_calendar_path(@day.id)
    select '2013', :from => 'day_day_date_1i'
    select 'February', :from => 'day_day_date_2i'
    select '1', :from => 'day_day_date_3i'
    fill_in "day_events_attributes_0_description", :with => "Testing Edit"
    select '18', :from => 'day_events_attributes_0_event_time_4i'
    select '00', :from => 'day_events_attributes_0_event_time_5i'
    click_on "Update Day"
  end
  it "check day edition" do
    event = Event.where(description: "Testing Edit").first
    event.day.day_date.strftime("%Y/%m/%d").should == "2013/02/01"
    event.event_time.strftime("%H:%M").should == "18:00"
  end
end

