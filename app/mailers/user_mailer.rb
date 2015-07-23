class UserMailer < ApplicationMailer
	default from: 'barboxapp@gmail.com'

	def paid_email(user, box, time)
		@user = user
		@box = box
		@time
		mail(to: @user.email, subject: 'Barbox payment reciept')
	end

	def admin_email(admin, order, user, box)		
		@user = user
		@admin = admin
		@order = order
		@box = box
		mail(to: 'barboxapp@gmail.com', subject: 'Barbox order has been placed')
	end
end
