class MemberController < ApplicationController

before_filter :auth_member

def my_coupons
@coupons = Coupon.find_all_by_user_id(current_user.id)

end

def my_account
end

def my_profile

	@profile = Profile.find(params[:id])
	
end

def auth_member

unless current_user && current_user.role == 'member'
flash[:notice] = "Please sign in."
redirect_to '/public/home'
	    
end

end

end
