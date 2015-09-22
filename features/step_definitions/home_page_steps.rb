Given(/^I navigate to SFP home page$/) do
  create_browser
  sfp.home_page.visit
end

And(/^I validate that Shopify session cookie is set "([^"]*)"$/) do |session_cookie|
  expect(sfp.home_page.session_cookie).to include(session_cookie)
end

Then(/^I verify load time "([^"]*)"$/) do |time|
  sfp.home_page.load_time time
end

And(/^I refresh the page$/) do
  refresh
end

Then(/^I validate that "([^"]*)" header has "([^"]*)" value$/) do |name, value|
  har = @proxy.har
  entry =  har.entries.first
  # for debugging purposes, prints out all headers
  # puts entry.request.headers.each{|h| puts h}
  header = entry.request.headers.find { |h| h['name'] == "#{name}" }
  expect(header["value"]).to eq ("#{value}")
end