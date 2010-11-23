require 'spec_helper'

describe "profiles/index.html.erb" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :user_id => 1,
        :gender => "Gender"
      ),
      stub_model(Profile,
        :user_id => 1,
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
