@automation @web

Feature: Product Posting


@lp-034
Scenario: Check whether the user click the Add new single listing button in the Active Tab and the user able to enter all details & click save as draft or submit button
 Given I logged in as seller
 When I click on My Lots active tab
 Then I verify lots page is loaded
 And I click on ADD NEW SINGLE LISTING link
 And I fill all fileds for lot
 And I click on draft button
 And I verify alert message "Successfully added!"


@lp-035
Scenario: Check whether the user click the Add new listing button in the Active Tab and the user able to Add lot into Auction 
 Given I logged in as seller
 When I click on My Auctions active tab
 Then I verify auctions page is loaded
 And I click on ADD NEW AUCTION link
 And I fill all fileds for auction
 And I click on submit button
 And I verify alert message "Successfully updated!"