if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_bXvM8eJqZAwVMshWZHOzz5OO',
    secret_key: 'sk_test_77sUtR7to1cZmxhFxVxpIGUo'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]