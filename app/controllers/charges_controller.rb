class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = #total price

    customer = Stripe::Customer.create({
      email: current_user.email,
      source: params[:stripeToken],
      })

      charge = Stripe::Charge.create({
        customer: current_user.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'eur',
        })

      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
      end

    end
