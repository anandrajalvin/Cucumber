@automation @web

Feature: Product

@lp-038
Scenario: Check whether the user bid as the hard bid in the product 
 Given I logged in
 When I click on view more info
 Then I verify product page is loaded
 And I place hard bid in the product
 And I verify alert message "Bid placed successfully"

@lp-039
Scenario: Check whether the user bid as the proxy bid in the product 
 Given I logged in
 When I click on view more info
 Then I verify product page is loaded
 And I place proxy bid in the product
 And I verify alert message "Bid placed successfully"


@lp-040
Scenario: Check whether the user able to buy the product
 Given I logged in
 When I click on view more info
 Then I verify product page is loaded
 And I click on BUY NOW link
 And I verify page [buynowcart] is loaded
 And I verify product is in cart
