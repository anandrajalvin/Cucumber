@automation @web 

Feature: Homepage

@lp-001
Scenario: Check whether the user should access the URL
 Given I navigate to Homepage
 Then I verify homepage is loaded

@lp-002
Scenario: Check whether the user able to click on logo to navigate to home page
 Given I logged in
 When I click on logo
 Then I verify page [search] is loaded

@lp-003
Scenario: Check whether the user able to see About 
 Given I logged in
 When I click on about link
 Then I verify page [about] is loaded

@lp-004
Scenario: Check whether the user able to see Live Auctions
 Given I logged in
 When I click on live auction link
 Then I verify page [auction] is loaded

@lp-005
Scenario: Check whether the user able to access the Contact us 
 Given I logged in
 When I click on contact link
 Then I verify page [contact] is loaded


