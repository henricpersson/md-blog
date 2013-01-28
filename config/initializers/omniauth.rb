Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2,
      'xxx.apps.googleusercontent.com',
      'xxx-qB1vWz9d5Uu1oM'
end
