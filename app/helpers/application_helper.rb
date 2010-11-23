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
end


