@automation @web 

Feature: Profile

@lp-010
Scenario: Check whether user able to view profile page
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded

@lp-011
Scenario: Check whether the user able to edit their details in the profile page
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 And I edit first name
 And I verified first name is updated