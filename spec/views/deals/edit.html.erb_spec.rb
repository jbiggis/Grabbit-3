require 'spec_helper'

describe "deals/edit.html.erb" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :new_record? => false,
      :title => "MyString",
      :price => "9.99",
      :value => "9.99",
      :description => "MyString",
      :fine_print => "MyString"
    ))
  end

  it "renders the edit deal form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => deal_path(@deal), :method => "post" do
      assert_select "input#deal_title", :name => "deal[title]"
      assert_select "input#deal_price", :name => "deal[price]"
      assert_select "input#deal_value", :name => "deal[value]"
      assert_select "input#deal_description", :name => "deal[description]"
      assert_select "input#deal_fine_print", :name => "deal[fine_print]"
    end
  end
end
