require 'capybara/cucumber'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app)
end

Capybara.default_driver = :selenium
