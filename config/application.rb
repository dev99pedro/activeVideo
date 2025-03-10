require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module YourCoolRubyOnRailsApp
  class Application < Rails::Application

    Sidekiq.configure_server do |config|
      config.redis = { url: 'redis://redis:6379/0' }
    end
    
    Sidekiq.configure_client do |config|
      config.redis = { url: 'redis://redis:6379/0' }
    end
  end
end
