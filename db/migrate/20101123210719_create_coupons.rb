class CreateCoupons < ActiveRecord::Migration
  def self.up
    create_table :coupons do |t|
      t.integer :coupon_number
      t.integer :user_id
      t.integer :deal_id
      t.integer :order_id
      t.datetime :purchase_date
      t.datetime :expiration_date
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :coupons
  end
end
