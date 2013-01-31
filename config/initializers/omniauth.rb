Rails.application.config.middleware.use OmniAuth::Builder do
  begin
    secret = Secret.last
    provider :google_oauth2,
      secret.google_client_id,
      secret.google_client_secret
  rescue
    Rails.logger.fatal <<-LOG
      No secrets found. Make sure there is a single row in the
      db table secrets. Without this, some features may not work.
      LOG
  end
end
