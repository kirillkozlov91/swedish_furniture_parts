require "selenium-webdriver"
require "rspec"
require "pry"

require_relative "../page_models/common_actions.rb"
Dir["../page_models/*.rb"].each {|file| require file}

# This constant sets default page load time
PAGE_LOAD_TIME = 10

SERVER_LABELS = {
    :production => "www.swedishfurnitureparts.com",
}

def get_browser
  (ENV['BROWSER'] || :firefox).to_sym
end

def get_environment
  env = (ENV['SERVER'] || :production).to_sym
  SERVER_LABELS[env]
end


def create_browser
  @browser = Selenium::WebDriver.for get_browser
  @browser.manage.timeouts.page_load = PAGE_LOAD_TIME
end

def sfp
  @sfp ||= SFP.new @browser
end