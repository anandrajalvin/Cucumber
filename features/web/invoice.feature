@automation @web

Feature: Invoice

@lp-022
Scenario: Check whether the user able to access the My Invoice Tab in Profile page 
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 When I click my invoices
 Then I verify invoice tabs are visible

@lp-023
Scenario: Check whether the user able to access the My Invoice Tab - all in Profile page 
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 When I click my invoice tab-[All]
 Then I verify page [all] is loaded

@lp-024
Scenario: Check whether the user able to access the Paid in My Invoice
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 When I click my invoice tab-[Paid]
 Then I verify page [paid] is loaded

@lp-025
Scenario: Check whether the user able to view the paid invoice
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 When I click my invoice tab-[Paid]
 Then I verify page [paid] is loaded
 When I click on [View invoice] button
 Then I verify the invoice is visible

@lp-026
Scenario: Check whether the user able to access the Unpaid in My Invoice
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 When I click my invoice tab-[Unpaid]
 Then I verify page unpaid is loaded