class AdminController < ApplicationController

before_filter :auth_user

def menu


end


end

private

def auth_user

unless current_user && current_user.role == 'admin'
flash[:notice] = "You do not have permission to access this page."
redirect_to '/public/home'
	    
end

end

