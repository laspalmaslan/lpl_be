require 'spec_helper'

describe "edit post" do
  before do
    post = FactoryGirl.create :post
    admin = FactoryGirl.create :admin 
    log_in(admin)
    visit edit_post_path(post)
    fill_in "post_title", :with => "Change to test"
    find('input[type="submit"]').click
  end

  it "should edit only the title" do
    post = Post.find_by_title("Change to test")
    post.title.should == "Change to test"
    post.content.should == "\ncontent testing"
    post.intro.should == "\nintro testing"
  end
end
