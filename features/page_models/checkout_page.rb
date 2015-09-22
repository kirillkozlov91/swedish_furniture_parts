class CheckoutPage < CommonActions

  def checkout_quantity
    @browser.find_element(:css, "span.product__quantity")
  end

  def shipping_method_button
    @browser.find_element(:css, "button.step__footer__continue-btn.btn")
  end
end