Feature: Test functionality of SFP home page

  @home_page
  Scenario: Validate that website is loaded with correct cookie, not caching and load time < 500 ms
    Given I navigate to SFP home page
    And I validate that Shopify session cookie is set "_shopify_s"
    Then I verify load time "0.5"

  @header
  Scenario: Verify that home page is not cached
    Given I navigate to SFP home page
    And I refresh the page
    Then I validate that "Cache-Control" header has "no-cache" value