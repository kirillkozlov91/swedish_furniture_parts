class SFP < CommonActions

  def home_page
    @home_page ||= HomePage.new @browser
  end

  def search_results_page
    @search_results_page ||= SearchResultsPage.new @browser
  end

  def product_page
    @product_page ||= ProductPage.new @browser
  end

  def cart_page
    @cart_page ||= CartPage.new @browser
  end

  def checkout_page
    @checkout_page ||= CheckoutPage.new @browser
  end

end