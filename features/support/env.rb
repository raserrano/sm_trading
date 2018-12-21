require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

#require 'lib/pages.rb'


Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = 'https://www.google.com' # change url
end

# Global hook invoked after all features
at_exit do
  # UI automation
  @browser.close if @browser

  # close open db connections
  @db.close if @db
end