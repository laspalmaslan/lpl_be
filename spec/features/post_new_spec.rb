require 'spec_helper'

describe "create post" do
  before  do
    admin = FactoryGirl.create :admin 
    log_in(admin)
    visit new_post_path
    fill_in "post_title", :with => "Test"
    find('input[type="submit"]').click
  end

  it "should create post" do
    Post.find_by_title("Test").title.should == "Test"
  end
end
