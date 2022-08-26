@automation @web @lp-004

Feature: Login

@lp-008
Scenario: Check whether user able to login as seller or buyer with valid credentials 
 Given I navigate to Homepage 
 When I log in as [Buyer]
 Then I verify alert message "Logged in successfully"