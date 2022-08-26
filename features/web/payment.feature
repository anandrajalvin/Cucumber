@automation @web

Feature: Payment

@lp-046
Scenario: Check whether the user able to add the Card details 
 Given I logged in
 When I click on buy now cart icon
 Then I verify page [buynowcart] is loaded
 And I click on PROCEED TO CHECKOUT link
 And I select date and time
 And I select payment method
 And I click ADD NEW CARD button
 And I fill all inputs for card
 And I click on Save link
 And I verify alert message "Source added successfully!"


@lp-047
Scenario: Check whether the user able to edit the Card details
 Given I logged in
 When I click on buy now cart icon
 Then I verify page [buynowcart] is loaded
 And I click on PROCEED TO CHECKOUT link
 And I select date and time
 And I select payment method
 And I click edit card button
 And I update card
 And I verify alert message "Source updated successfully!"

@lp-048
Scenario: Check whether the user able to delete the Card details
 Given I logged in
 When I click on buy now cart icon
 Then I verify page [buynowcart] is loaded
 And I click on PROCEED TO CHECKOUT link
 And I select date and time
 And I select payment method
 And I click delete card button
 And I verify alert message "Source deleted successfully!"

@lp-049
Scenario: Check whether the user able to pay the product
    Given I logged in
    When I click on buy now cart icon
    Then I verify page [buynowcart] is loaded
    And I click on PROCEED TO CHECKOUT link
    And I select date and time
    And I select payment method
    And I select card details
    And I click on MAKE PAYMENT link
    And I verify alert message "Payment completed!"