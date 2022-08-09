
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include RSpec::Matchers

World(Page)


Capybara.register_driver  :selenium  do |driver|
    Capybara::Selenium::Driver.new(driver, :browser => :chrome)
    end
    Capybara.configure do 

    Capybara.default_driver = :selenium
    Capybara.app_host = 'http://www.linkedin.com/'
    Capybara.default_max_wait_time = 10
end