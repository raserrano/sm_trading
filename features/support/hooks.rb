Before do
  driver = (ENV['WEB_DRIVER'] || :firefox).to_sym
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = 180
end

