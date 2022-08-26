And(/^I click on PROCEED TO CHECKOUT link$/) do
    @browser.div(class: "primButton").button(type: "button").click!
end

And(/^I select date and time$/) do
    @browser.divs(class: "selectDate")[0].click
    @browser.divs(class: "chCnt")[1].divs(class: "selectDate")[0].click
end

And(/^I select payment method$/) do
    @browser.select(name: "payment_method").select(text: "Card")
end

And(/^I select card details$/) do
    @browser.span(text: "Show").click
    sleep 1
    @browser.divs(class: "checkoutSavedCard")[0].click
end


And(/^I click on MAKE PAYMENT link$/) do
    @browser.span(text: "Make payment").click
    sleep 5
end


And(/^I click ADD NEW CARD button$/) do
    @browser.span(text: "Show").click
    @browser.span(text: "add").click
    sleep 1
end


And(/^I fill all inputs for card$/) do
    @browser.text_field(name: "card_name").set "Cucumber Auto"
    @browser.text_field(name: "card_number").set "5555555555554444"
    @browser.select(name:"card_exp_month").select(text: "05")
    @browser.select(name:"card_exp_year").select(text: "2025")
    @browser.text_field(name: "card_cvc").set "123"
    @browser.text_field(name: "card_address_line1").set "1802 Industrial Boulevard "
    @browser.text_field(name: "card_address_line2").set "Suite 1010"
    @browser.text_field(name: "card_address_city").set "Colleyville"
    @browser.text_field(name: "card_address_zip").set "76092"
    @browser.select(name: "card_address_country").select(text: "United States")
    @browser.select(name: "card_address_state").select(text: "Texas")
end


And(/^I click on Save link$/) do
    @browser.span(text: "Save").click
    sleep 2
end

And(/^I update card$/) do
    @browser.select(name:"exp_month").select(text: "05")
    @browser.divs(class: "primButton")[1].click
end

And(/^I click edit card button$/) do
    @browser.span(text: "Show").click
    @browser.divs(class: "actionBtn")[1].buttons(type: "button")[0].click
    sleep 2
end

And(/^I click delete card button$/) do
    @browser.span(text: "Show").click
    @browser.divs(class: "actionBtn")[1].buttons(type: "button")[1].click
    sleep 2
    @browser.divs(class: "primButton")[1].click
end