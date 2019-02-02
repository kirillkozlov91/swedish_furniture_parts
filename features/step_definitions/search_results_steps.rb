And(/^I enter search query "([^"]*)" and click search$/) do |search_query|
  #create_browser
  sfp.home_page.visit
  sfp.home_page.search_box.send_keys search_query
  sfp.home_page.search_icon.click
end

Then(/^I am getting exactly one result$/) do
  expect(sfp.search_results_page.search_results_text).to be == "1 result found"
  expect(sfp.search_results_page.search_result_103114.displayed?) == true
end
