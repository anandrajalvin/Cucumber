And(/^I click my invoices$/) do
    # @browser.span(text: "receipt").click
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[0].click
    sleep 0.5
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[7].click
end

Then(/^I verify invoice tabs are visible$/) do
    expect(@browser.a(text: "All").exists?).to be true
end

Then(/^I click my invoice tab-\[([^"]*)\]$/) do |tab|
    # @browser.driver.execute_script("window.scrollBy(0,400)")
    # @browser.span(text: "receipt").click
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[0].click
    sleep 0.5
    @browser.div(class: "sideNav").ul.divs(class:"MuiButtonBase-root MuiListItem-root MuiListItem-gutters MuiListItem-button")[7].click
    @browser.a(text: tab).click
end

Then(/^I verify the invoice is visible$/) do
    expect(@browser.h2(text: "TAX INVOICE").exists?).to be true
end