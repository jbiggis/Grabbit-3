class ApplicationController < ActionController::Base
  protect_from_forgery

  private

def auth_admin

unless current_user && current_user.role == 'admin'
flash[:notice] = "You do not have permission to access this page."
redirect_to '/public/home'
	    
end

end
end
