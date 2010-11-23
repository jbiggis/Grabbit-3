require 'spec_helper'

describe "deals/show.html.erb" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :title => "Title",
      :price => "9.99",
      :value => "9.99",
      :description => "Description",
      :fine_print => "Fine Print"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Fine Print/)
  end
end
