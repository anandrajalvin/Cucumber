@automation @web

Feature: Logout

@lp-050
Scenario: Check whether the user able to log out
 Given I logged in
 When I click on logout icon
 Then I verify alert message "Logged out successfully"