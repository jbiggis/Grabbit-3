class PublicController < ApplicationController

def home

@deal = Deal.find(1)

end

def deal

@deal = Deal.find(params[:id])

end

def checkout

	@title = "New Order"
	@deal = Deal.find(params[:id])

	@user = current_user
if user_signed_in? == false 

	@user = User.new
end
	@public = Public.new


end




  def create

	  if current_user.role == 'admin'
		  flash[:notice] = "Admins cannot make purchases"
		redirect_to '/public/checkout'
	  else


if user_signed_in? == false 

@user = User.create(params[:user])

params[:public][:user_id] = @user.id

end 


quantity = params[:public][:quantity].to_i

until quantity == 0

@order = Order.new


@order.user_id = params[:public][:user_id]
@order.deal_id = params[:public][:deal_id]
@order.status = 1

if @order.save

	@coupon = Coupon.new

	@coupon.order_id = @order.id
	@coupon.user_id = params[:public][:user_id]
	@coupon.deal_id = params[:public][:deal_id]

	@coupon.expiration_date = params[:public][:expiration_date]
	@coupon.status = 1

	if @coupon.save

		quantity -= 1

	else

		render :action => "checkout"

	end
end
end

redirect_to(root_path, :notice => "Deal purchased.")
  end

  end



end
