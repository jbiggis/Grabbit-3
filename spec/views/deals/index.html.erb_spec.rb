require 'spec_helper'

describe "deals/index.html.erb" do
  before(:each) do
    assign(:deals, [
      stub_model(Deal,
        :title => "Title",
        :price => "9.99",
        :value => "9.99",
        :description => "Description",
        :fine_print => "Fine Print"
      ),
      stub_model(Deal,
        :title => "Title",
        :price => "9.99",
        :value => "9.99",
        :description => "Description",
        :fine_print => "Fine Print"
      )
    ])
  end

  it "renders a list of deals" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fine Print".to_s, :count => 2
  end
end
