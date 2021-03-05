# frozen_string_literal: true

Rails.application.configure do
  config.cache_classes                       = true
  config.eager_load                          = true
  config.consider_all_requests_local         = false
  config.public_file_server.enabled          = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.compile                      = false
  config.force_ssl                           = false
  config.active_storage.service              = :local
  config.action_mailer.perform_caching       = false
  config.action_mailer.perform_deliveries    = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.preview_path          = Rails.root.join('tmp/mailers/previews')
  config.action_mailer.default_url_options   = { host: ENV['SMTP_DOMAIN'] }
  config.action_mailer.asset_host            = ENV['SMTP_DOMAIN']
  config.log_level                           = :debug
  config.log_tags                            = [:request_id]
  config.i18n.fallbacks                      = true
  config.active_support.deprecation          = :notify
  config.log_formatter                       = ::Logger::Formatter.new

  config.action_mailer.delivery_method     = :smtp
  host                                     = 'bubs-and-books.herokuapp.com' #replace with your own url
  config.action_mailer.default_url_options = { host: host }

  # SMTP settings for gmail
  config.action_mailer.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => ENV['GMAIL_USERNAME'],
    :password             => ENV['GMAIL_PASSWORD'],
    :authentication       => "plain",
    :enable_starttls_auto => true
  }

  if ENV['RAILS_LOG_TO_STDOUT'].present?
    logger           = ActiveSupport::Logger.new($stdout)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
