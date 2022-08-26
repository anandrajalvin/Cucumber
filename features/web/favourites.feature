@automation @web 

Feature: Favourites

@lp-028
Scenario: Check whether the user able to add into My Favourites product 
 Given I logged in
 When I click on favourite icon
 Then I verify alert message "Successfully added to watchlist!"
 And I revert back the changes

@lp-029
Scenario: Check whether the user able to add into My Favourites product 
 Given I logged in
 When I click on favourite icon
 Then I verify alert message "Successfully added to watchlist!"
 And I navigate to favourite page
 And I verify the product is visible

@lp-030
Scenario: Check whether the user able to remove the Favourite in the product
 Given I logged in
 When I navigate to favourite page
 Then I click on heart icon
 And I verify alert message "Successfully removed from watchlist!"