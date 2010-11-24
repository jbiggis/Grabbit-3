module ApplicationHelper

def title
	 title = "Grabbit"
if 
	@title.nil? 
	title
else
	title + " - " + @title
	end
	

	end


def admin_menu

link_to "Manage Profiles", profiles_path 
link_to "Manage Deals", deals_path 
link_to "Manage Coupons", coupons_path 
link_to "Manage Orders", orders_path 

end


end

