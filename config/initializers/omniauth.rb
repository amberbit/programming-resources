Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :bitbucket, ENV['BITBUCKET_KEY'], ENV['BITBUCKET_SECRET']
end
