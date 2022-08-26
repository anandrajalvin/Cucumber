And(/^I navigate to saved cards page$/) do
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[0].click
    sleep 0.5
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[4].click
    @browser.a(text: "Card Details").click
end


And(/^I click on edit card icon$/) do
    @browser.divs(class: "sc-btns-wrap")[0].button(type: "button").click
end

And(/^I update card details$/) do
    @browser.select(name:"exp_month").select(text: "05")
    @browser.div(class: "primButton").click
end


And(/^I navigate to bank details page$/) do
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[0].click
    sleep 0.5
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[4].click
    @browser.a(text: "Bank Details").click
end


And(/^I click on edit bank icon$/) do
    @browser.span(text: "Edit").click
end

And(/^I update bank details$/) do
    @browser.text_field(name: "account_holder_name").send_keys [:control, 'a'], :backspace
    @browser.text_field(name: "account_holder_name").set "TEST#{rand(1..9)}"
    @browser.div(class: "primButton").click
end