class ChargesController < ApplicationController
	#gets the shipping address and barbox information and renders
	#the order summary page before payment is made
	def new
		@shipping_address = get_shipping_address
		@id = get_shipping_address['box_id']
		@box = Box.find(get_shipping_address['box_id']);
		@current_user = current_user
	end

	#creates the order once payment has been made using Stripe API
	def create
		@box = Box.find(params[:box_id])
		@date = params[:date]
		@time = params[:time]
		@address1 = params[:address1]
		@address2 = params[:address2]
		@city = params[:city]
		@state = params[:state]
		@zip = params[:zip]
		@phone = params[:phone]
		@stripe = params[:stripeToken]
		order = Order.create(order_number: @stripe,
			date: @date,
			time: @time,
			address1: @address1,
			address2: @address2,
			city: @city,
			state: @state,
			zip: @zip,
			phone: @phone)

		@box.orders << order
		current_user.orders << order
		
		UserMailer.paid_email(current_user, @box, @time, order).deliver_now
		UserMailer.admin_email(order, current_user, @box).deliver_now
	 	# Amount in cents
	 	@amount = 10000

	 	customer = Stripe::Customer.create(
	 		:email => 'example@stripe.com',
	 		:card  => params[:stripeToken]
	 		)

	 	charge = Stripe::Charge.create(
	 		:customer    => customer.id,
	 		:amount      => @amount,
	 		:description => 'Rails Stripe customer',
	 		:currency    => 'usd'
	 		)

	 rescue Stripe::CardError => e
	 	flash[:error] = e.message
	 	redirect_to charges_path
	 end

	 private

	 def get_shipping_address
	 	params.require(:shipping_address).permit(:address1, :address2, :city, :state, :zip, :phone, :date, :box_id, :time)
	 end
	end
