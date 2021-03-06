require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelloWorldTwilio
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.

    account_sid = 'ACa14dd09aacc2f2ee68c16774c07e291f'
    auth_token = '3c62d46d586708fe9d3ff7b2ab7de484'
    
    @client = Twilio::REST::Client.new account_sid, auth_token


    Twilio.configure do |config|
     config.account_sid = account_sid
     config.auth_token = auth_token
    end


    config.active_record.raise_in_transactional_callbacks = true
    
  end
end
