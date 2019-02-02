require "selenium/webdriver"
require 'browsermob/proxy'
require "rspec"
require "pry"
require "geckodriver/helper"

require_relative "../page_models/common_actions.rb"
Dir["../page_models/*.rb"].each {|file| require file}

# This constant sets default page load time
PAGE_LOAD_TIME = 20

SERVER_LABELS = {
    :production => "www.swedishfurnitureparts.com"
}


def create_browser
  dir = File.join(File.dirname(__FILE__),"../../browsermob-proxy-2.1.0-beta-3/bin/browsermob-proxy")
  server = BrowserMob::Proxy::Server.new(dir)
  server.start

  @proxy = server.create_proxy

  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.proxy = @proxy.selenium_proxy

  @browser = Selenium::WebDriver.for :firefox, :profile => profile
  @browser.manage.timeouts.implicit_wait = 30
  @browser.manage.timeouts.page_load = PAGE_LOAD_TIME
end

def sfp
  @sfp ||= SFP.new @browser
end


def refresh
  @proxy.new_har("furniture", :capture_headers => true)
  @browser.navigate.refresh
  # temp sleep until page loads
  sleep 5
end
