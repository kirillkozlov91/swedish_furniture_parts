Feature: Test functionality of SFP home page

  @home_page
  Scenario: Validate that website is loaded with correct cookie, not caching and load time < 500 ms
    Given I navigate to SFP home page
    And I validate that Shopify session cookie is set "_shopify_s"
    Then I validate that page is not cached
    Then I verify load time "0.5"
