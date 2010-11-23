require 'spec_helper'

describe "coupons/edit.html.erb" do
  before(:each) do
    @coupon = assign(:coupon, stub_model(Coupon,
      :new_record? => false,
      :coupon_number => 1,
      :user_id => 1,
      :deal_id => 1,
      :order_id => 1,
      :status => 1
    ))
  end

  it "renders the edit coupon form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => coupon_path(@coupon), :method => "post" do
      assert_select "input#coupon_coupon_number", :name => "coupon[coupon_number]"
      assert_select "input#coupon_user_id", :name => "coupon[user_id]"
      assert_select "input#coupon_deal_id", :name => "coupon[deal_id]"
      assert_select "input#coupon_order_id", :name => "coupon[order_id]"
      assert_select "input#coupon_status", :name => "coupon[status]"
    end
  end
end
