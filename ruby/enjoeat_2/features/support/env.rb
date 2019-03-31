require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://enjoeat-sp3.herokuapp.com'
    config.default_max_wait_time = 5 #timeout para aguardar elemento
end