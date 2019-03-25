class SubscriptionsController < ApplicationController
  def new
  end

  def create
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

    if charge[:paid]
      current_user.role = 2
      redirect_to root_path, notice: "You have successfully subscribed!"
    else
      redirect_to subscriptions_path, notice: "Something went very wrong!"
    end
  end

  private

  def stripe_token(params)
    Rails.env.test? ? generate_test_token : params[:stripeToken]
  end
end