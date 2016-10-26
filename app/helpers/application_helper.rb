module ApplicationHelper
	def signed_in?
		if session[:user_id].nil?   #boolean ? means no one logged in to the session
			return		# this is like break in java
		else
			@current_user = User.find_by_id(session[:user_id])
			# no return here and using @ that it is not a local variable it's global
		end
	end
	def euro(amount)
		number_to_currency(amount, :unit => '€')	
	end
end
