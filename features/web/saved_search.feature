@automation @web 

Feature: Saved Search

@lp-036
Scenario: Check whether the user able to save the search products
 Given I logged in
 When I search "industrial"
 Then I save the search
 And I navigate to my saved searches page
 And I verify the saved search is visible
