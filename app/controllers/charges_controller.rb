class ChargesController < ApplicationController

	def new
		@shipping_address = get_shipping_address
		@id = get_shipping_address['box_id']
		@box = Box.find(get_shipping_address['box_id']);
		@current_user = current_user
		@order = Order.create(address1: get_shipping_address['address1'])
	end

	def create
	  # Amount in cents
	  @amount = 6000
	  @orderid = params[:order_id]
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
		params.require(:shipping_address).permit(:address1, :address2, :city, :state, :zip, :phone, :date, :box_id)
	end
end
