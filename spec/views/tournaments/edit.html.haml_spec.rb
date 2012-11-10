require 'spec_helper'

describe "tournaments/edit" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :game => "MyString",
      :description => "MyText",
      :award => "MyString"
    ))
  end

  it "renders the edit tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path(@tournament), :method => "post" do
      assert_select "input#tournament_game", :name => "tournament[game]"
      assert_select "textarea#tournament_description", :name => "tournament[description]"
      assert_select "input#tournament_award", :name => "tournament[award]"
    end
  end
end
