class SubscriptionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    customer = Stripe::Customer.create(
      email: current_user.email,
      source: stripe_token(params),
      description: 'The Viking Times subscription'
    )

    @charge = Stripe::Charge.create(
      customer: customer.id,
      amount: 15_000,
      currency: 'sek',
      description: 'The Viking Times: 1 month subscription'
    )
  end

  private

  def stripe_token(params)
    Rails.env.test? ? generate_test_token : params[:stripeToken]
  end
end