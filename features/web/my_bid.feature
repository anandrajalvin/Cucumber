@automation @web 

Feature: My Bids

@lp-012
Scenario: Check whether the user able to access the My Bids Tab
 Given I logged in
 When I click on my bids icon
 Then I verify Bids page is loaded

@lp-013
Scenario: Check whether the user able to access the Winning Tab
 Given I logged in
 When I navigate to winning bids page
 Then I verify Winning page is loaded

@lp-014
Scenario: Check whether the user able to access the Currently outbid Tab
 Given I logged in
 When I navigate to currently outbid bids page
 Then I verify Currently Outbid page is loaded

@lp-015
Scenario: Check whether the user able to access the Won Tab
 Given I logged in
 When I navigate to won bids page
 Then I verify Won page is loaded

@lp-017
Scenario: Check whether the user able to bid on the live product 
 Given I logged in
 And I sort the products to bid
 And I place a bid
 When I confirm a bid
 Then I verify alert message "Bid placed successfully"
 
@lp-018
Scenario: Check whether the user to access the List view
 Given I logged in
 When I click on my bids icon
 Then I verify Bids page is loaded
 When I click list view
 Then I verify products listed in list view

@lp-019
Scenario: Check whether the user to access the Grid view
 Given I logged in
 When I click on my bids icon
 Then I verify Bids page is loaded
 When I click grid view
 Then I verify products listed in grid view

@lp-020
Scenario: Check whether the user able to access the Result per page
 Given I logged in
 When I click on my bids icon
 Then I verify Bids page is loaded
 When I change the per page count
 Then I verify products are visible
