if Rails.env.production?
  token = ENV['SECRET_TOKEN']
  raise "Need to set SECRET_TOKEN in production" if token.blank?
  Lobsters::Application.config.secret_key_base = token
end
