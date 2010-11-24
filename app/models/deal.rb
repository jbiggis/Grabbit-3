class Deal < ActiveRecord::Base

	has_many :coupons

	has_attached_file :image, :url => "/assets/deals/:id/:style/:basename.:extension",
	:path => ":rails_root/public/assets/deals/:id/:style/:basename.:extension"

end
