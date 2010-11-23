require 'spec_helper'

describe "orders/new.html.erb" do
  before(:each) do
    assign(:order, stub_model(Order,
      :user_id => 1,
      :deal_id => 1,
      :status => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_user_id", :name => "order[user_id]"
      assert_select "input#order_deal_id", :name => "order[deal_id]"
      assert_select "input#order_status", :name => "order[status]"
    end
  end
end
