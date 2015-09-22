class CommonActions

  def initialize browser
    @browser = browser
  end

  def visit
    @browser.navigate.to build_url
  end

  def build_url
    self.path.gsub!("www.swedishfurnitureparts.com", get_environment)
  end

end
