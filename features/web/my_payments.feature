@automation @web 

Feature: My Payments

@lp-031
Scenario: Check whether the user able to ADD or Edit the Card details or Delete in the Credit card
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 And I navigate to saved cards page
 And I verify page [saved_cards] is loaded
 And I click on edit card icon
 And I update card details
 And I verify alert message "Source updated successfully!"
 
@lp-032
Scenario: Check whether the user able to ADD or Edit the Bank details or Delete in the Bank details
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 And I navigate to bank details page
 And I verify page [bank_details] is loaded
 And I click on edit bank icon
 And I update bank details
 And I verify alert message "Source updated successfully!"
