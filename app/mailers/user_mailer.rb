class UserMailer < ApplicationMailer
	default from: 'barboxapp@gmail.com'

	def paid_email(user, box, time, order)
		@user = user
		@box = box
		@order = order
		@time = time
		mail(to: @user.email, subject: 'Barbox payment reciept')
	end

	def admin_email(order, user, box)		
		@user = user
		@order = order
		@box = box
		mail(to: 'barboxapp@gmail.com', subject: 'Barbox order has been placed')
	end
end
