Given(/^I navigate to SFP product page$/) do
  create_browser
  sfp.product_page.visit
end

And(/^I add product to cart$/) do
  sfp.product_page.add_to_cart_button.click
end

Then(/^I change quantity to "([^"]*)"$/) do |qty_added|
  sfp.cart_page.change_quantity.clear
  sfp.cart_page.change_quantity.send_keys qty_added
end

Then(/^I initiate checkout$/) do
  sfp.cart_page.checkout_button.click
end

Then(/^I verify that "([^"]*)" items are added to the cart and ready for checkout$/) do |qty_checkout|
  expect(sfp.checkout_page.checkout_quantity.text).to be == qty_checkout
  expect(sfp.checkout_page.shipping_method_button.displayed?) == true
end