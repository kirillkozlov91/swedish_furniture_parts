class ProductPage < CommonActions

  def path
    "http://www.swedishfurnitureparts.com/products/ikea-cam-lock-nut-103114"
  end

  def add_to_cart_button
    @browser.find_element(:xpath, ("//input[@name='add']"))
    # @browser.find_element(:id, "add-174000745")
  end

end