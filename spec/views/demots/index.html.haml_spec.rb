require 'spec_helper'

describe "demots/index" do
  before(:each) do
    assign(:demots, [
      stub_model(Demot,
        :tittle => "Tittle",
        :votes_count => 1,
        :active => false,
        :user_id => 2
      ),
      stub_model(Demot,
        :tittle => "Tittle",
        :votes_count => 1,
        :active => false,
        :user_id => 2
      )
    ])
  end

  it "renders a list of demots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tittle".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
