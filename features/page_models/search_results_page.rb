class SearchResultsPage < CommonActions

  def search_results_text
    @browser.find_element(:xpath, ("//div[@class='ais-body ais-stats--body']/div/span[@class='ais-stats--nb-results']")).text
  end

  def search_result_103114
    @browser.find_element(:xpath, ("//a[@href='/products/ikea-cam-lock-nut-103114?variant=399596849']"))
  end

  end
