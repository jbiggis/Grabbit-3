class Coupon < ActiveRecord::Base

belongs_to :deal
belongs_to :order

end
