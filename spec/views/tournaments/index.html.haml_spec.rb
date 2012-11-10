require 'spec_helper'

describe "tournaments/index" do
  before(:each) do
    assign(:tournaments, [
      stub_model(Tournament,
        :game => "Game",
        :description => "MyText",
        :award => "Award"
      ),
      stub_model(Tournament,
        :game => "Game",
        :description => "MyText",
        :award => "Award"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Game".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Award".to_s, :count => 2
  end
end
