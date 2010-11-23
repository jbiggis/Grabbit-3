require 'spec_helper'

describe "orders/edit.html.erb" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :new_record? => false,
      :user_id => 1,
      :deal_id => 1,
      :status => 1
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => order_path(@order), :method => "post" do
      assert_select "input#order_user_id", :name => "order[user_id]"
      assert_select "input#order_deal_id", :name => "order[deal_id]"
      assert_select "input#order_status", :name => "order[status]"
    end
  end
end
