class OrdersController < ApplicationController
	before_action :authenticate_user!
	def show
		render :index
	end

	def create
	  # Amount in cents
	  @amount = 6000

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
		params.require(:shipping_address).permit(:address1, :address2, :city, :state, :zip, :phone, :date)
	end
end
