require 'spec_helper'

describe "deals/new.html.erb" do
  before(:each) do
    assign(:deal, stub_model(Deal,
      :title => "MyString",
      :price => "9.99",
      :value => "9.99",
      :description => "MyString",
      :fine_print => "MyString"
    ).as_new_record)
  end

  it "renders new deal form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => deals_path, :method => "post" do
      assert_select "input#deal_title", :name => "deal[title]"
      assert_select "input#deal_price", :name => "deal[price]"
      assert_select "input#deal_value", :name => "deal[value]"
      assert_select "input#deal_description", :name => "deal[description]"
      assert_select "input#deal_fine_print", :name => "deal[fine_print]"
    end
  end
end
