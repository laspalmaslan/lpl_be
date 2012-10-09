require 'spec_helper'

describe "posts actions" do
  describe "edit post" do
    before "edit post" do
      post = FactoryGirl.create :post
      visit edit_post_path(post)
      fill_in "post_title", :with => "Change to test"
      click_on "Save"
    end

    it "should edit only the title" do
      post = Post.find_by_title("Change to test")
      post.title.should == "Change to test"
      post.content.should == "\ncontent testing"
      post.intro.should == "\nintro testing"
    end
  end
end
