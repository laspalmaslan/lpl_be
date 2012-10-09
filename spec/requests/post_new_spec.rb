require 'spec_helper'

describe "posts actions" do
  describe "create post" do
    before "create post" do
      visit new_post_path
      fill_in "post_title", :with => "Test"
      click_on "Save"
    end

    it "should create post" do
      Post.find_by_title("Test").title.should == "Test"
    end
  end
end
