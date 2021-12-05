Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "3e1a6bdcfb47fe23bace", "8ed1ee4f6582340ea28f11a8ac9bf2370ecc6db5"
  else
    provider :github,
    Rails.application.credentials.github[:client_id],
    Rails.application.credentials.github[:crient_secret]
  end
end
