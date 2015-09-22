Feature: Test functionality of SFP checkout page

  @checkout
  Scenario: Validate that user can add products to cart, change quantity and checkout
    Given I navigate to SFP product page
    And I add product to cart
    Then I change quantity to "2"
    Then I initiate checkout
    Then I verify that "2" items are added to the cart and ready for checkout
