@automation @web 

Feature: My Purchases

@lp-037
Scenario: Check whether user able to see the buy now paid product in my purchase page 
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 And I click on my purchases icon
 And I verify page [buynow] is loaded

