class UserMailer < ApplicationMailer
	def welcome(user)
		@user = user
		mail(:to => user.email, :subject => "Welcom to movie app")
	end
end
