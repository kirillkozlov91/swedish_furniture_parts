Given(/^I navigate to SFP home page$/) do
  create_browser
  sfp.home_page.visit
end

And(/^I validate that Shopify session cookie is set "([^"]*)"$/) do |session_cookie|
  expect(sfp.home_page.session_cookie).to include(session_cookie)
end

Then(/^I validate that page is not cached$/) do

end

Then(/^I verify load time "([^"]*)"$/) do |time|
  sfp.home_page.load_time time
end
