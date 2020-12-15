require "capybara"
require "capybara/cucumber"
require "rspec"
require "selenium-webdriver"
require "site_prism"
require "faker"


Capybara.configure do |config|
    #config.default_driver = :selenium_chrome_headless -- Opção de executar o teste sem necessidade da abertura do navegador
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
end
