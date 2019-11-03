class << Rails.application
  def domain
    "barnacl.es"
  end

  def name
    "Barnacles"
  end
end

Rails.application.routes.default_url_options[:host] = Rails.application.domain

Rails.application.config.middleware.use ExceptionNotification::Rack,
  :email => {
    :email_prefix => "",
    :sender_address => %{"system" <system@barnacl.es>},
    :exception_recipients => %w{peter@push.cx},
  }
