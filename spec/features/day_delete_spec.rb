#coding: UTF-8
require 'spec_helper'

describe "Check delete day acction" do
  before "create day and go calendar index pages and click on delete" do
    @day = FactoryGirl.create :day
    event = FactoryGirl.create :event
    @day.events << event
    @admin = FactoryGirl.create :admin
    @count = Day.count
    log_in(@admin)
    visit manage_calendars_path()
    page.evaluate_script('window.confirm = function() { return true; }')
    find(".btn-danger").click
  end
  it "check day delete and page path", :js => true do
    sleep 2
    current_path.should == manage_calendars_path()
    Day.count.should == (@count - 1)
  end
end

