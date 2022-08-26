@automation @web 

Feature: Cart

@lp-041
Scenario: Check whether the user able to access the Cart page
 Given I logged in
 When I click on cart icon
 Then I verify page [cart] is loaded

@lp-043
Scenario: Check whether the user able to access the Cart page
 Given I logged in
 When I click on cart icon
 Then I verify page [cart] is loaded
 And I click on PROCEED TO CHECKOUT link
 And I select date and time
 And I select payment method
 And I select card details
 And I click on MAKE PAYMENT link
 And I verify alert message "Payment completed!"