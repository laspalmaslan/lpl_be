require 'spec_helper'

describe "tournaments/show" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :game => "Game",
      :description => "MyText",
      :award => "Award"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Game/)
    rendered.should match(/MyText/)
    rendered.should match(/Award/)
  end
end
