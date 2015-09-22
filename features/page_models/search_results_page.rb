class SearchResultsPage < CommonActions

  def search_results_table
    @browser.find_element(:css, "ul.search-results.products-list").find_elements(:tag_name, "li")
  end

  def search_result_103114
    @browser.find_element(:xpath, ("//a[@href='/products/ikea-cam-lock-nut-103114']"))
  end

  end