require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
   config.default_driver = :selenium_chrome # :selenium to driving Firefox
   config.default_max_wait_time = 10
end

Capybara.page.driver.browser.manage.window.maximize