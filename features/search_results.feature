Feature: Test functionality of SFP search page

  @search_page
  Scenario: Validate that user search query returns exactly one result
    Given I navigate to SFP home page
    And I enter search query "Cam Lock Nut #103114" and click search
    Then I am getting exactly one result
