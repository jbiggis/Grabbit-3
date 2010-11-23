class MemberController < ApplicationController

def my_coupons
@coupons = Coupon.find_all_by_user_id(current_user.id)

end

def my_account
end

def my_profile

	@profile = Profile.find(params[:id])
	
end




end
