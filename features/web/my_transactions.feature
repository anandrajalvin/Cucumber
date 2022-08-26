@automation @web 

Feature: My Transactions

@lp-033
Scenario: Check whether the user able to see all Transactions in the My Transactions section
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 And I click on my transaction icon
 And I verify page [transactions] is loaded

