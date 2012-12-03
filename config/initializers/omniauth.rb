Rails.configuration.DAILYCRED_CLIENT_ID = "78c46755-1320-45d3-9ad0-3fb7496fe2f0"
Rails.configuration.DAILYCRED_SECRET_KEY = "c061c740-2ab1-4701-a62b-bda3b83834e2-3253544d-d227-47bd-9f3e-ffc3dc32d2e9"

# configure where users should be redirected after authentication

Rails.configuration.DAILYCRED_OPTIONS = {
  :after_auth => '/', #after login
  :after_unauth => '/' #after logout
}
