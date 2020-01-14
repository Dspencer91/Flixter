Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_kmXE1pqFNyBpIWvTJBjlw1Zb00Fsw5c0Wn'],
  secret_key: ENV['sk_test_pGlygn6lbawQCMZwgA4rhGnn00XkndEmho']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]