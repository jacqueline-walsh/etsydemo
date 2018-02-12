Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_CN93xRMHUcXQGnC6tIWFLKYQ'],
  :secret_key      => ENV['sk_test_UchCWPqsfLYu3bYbVQ12EHq1']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]