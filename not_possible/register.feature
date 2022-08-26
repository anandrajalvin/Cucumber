@automation @web

Feature: Register

@lp-006
Scenario: Check whether the user able to register as buyer 
 Given I navigate to Homepage 
 When I click on Register link
 Then I verify page [registration] is loaded
 And I fill all inputs for buyer
 And I click on CREATE MY ACCOUNT button 
 And I verify alert message "Successfully registered!"


@lp-007
Scenario: Check whether the user able to register as seller 
 Given I navigate to Homepage 
 When I click on Register link
 Then I verify page [registration] is loaded
 And I fill all inputs for seller
 And I click on CREATE MY ACCOUNT button 
 And I verify alert message "Successfully registered!"