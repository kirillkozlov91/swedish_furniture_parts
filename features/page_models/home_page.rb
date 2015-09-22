class HomePage < CommonActions

  def path
    "http://www.swedishfurnitureparts.com"
  end

  def session_cookie
    shopify_cookie = @browser.manage.cookie_named '_shopify_s'
    shopify_cookie[:name]
  end

  def load_time time
      @browser.manage.timeouts.page_load = time.to_i
    begin
      @browser.navigate.refresh
    rescue Selenium::WebDriver::Error::TimeOutError
      puts "Page is too slow!!!"
      # fail
    end
  end

  def search_box
  @browser.find_element(:xpath, ("//input[@name='q']"))
  end

  def search_icon
    @browser.find_element(:xpath, ("//input[@value='Search']"))
  end

end