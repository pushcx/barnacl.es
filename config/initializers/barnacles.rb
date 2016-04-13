class << Rails.application
  def domain
    "barnacl.es"
  end

  def name
    "Barnacles"
  end
end

Rails.application.routes.default_url_options[:host] = Rails.application.domain
