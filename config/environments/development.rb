Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use :letter_opener (open in browser), or :smtp (to test using real SMTP)
  # Must be a symbol or it wont override action_mailer defaults.
  config.action_mailer.delivery_method = ENV.fetch("MAIL_METHOD", "letter_opener").to_sym
  config.action_mailer.smtp_settings = {
    address: ENV["MAIL_SMTP_ADDR"],
    port: ENV["MAIL_SMTP_PORT"],
    domain: ENV["MAIL_SMTP_DOMAIN"],
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: ENV["MAIL_USERNAME"],
    password: ENV["MAIL_PASSWORD"]
  }
  config.action_mailer.default_url_options = { :host => 'localhost:3000' } # this is used by Devise for confirmation e-mails et al

  config.action_controller.action_on_unpermitted_parameters = :raise

  # Suppress complaints when a console cannot be shown for a given IP address or content type.
  config.web_console.whiny_requests = false

  # Forms created with JavaScript can now have protection against code-injection attacks. 
  # Each form in the application will each have their own CSRF token that is specified to the action and method for that form.
  config.action_controller.per_form_csrf_tokens = true
  config.action_controller.forgery_protection_origin_check = true

end
