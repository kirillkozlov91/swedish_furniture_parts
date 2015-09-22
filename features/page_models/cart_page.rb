class CartPage < CommonActions

  def change_quantity
    @browser.find_element(:xpath, ("//input[@type='text']"))
  end

  def checkout_button
    @browser.find_element(:id, ("checkout"))
  end

end