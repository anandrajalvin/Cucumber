And(/^I click on my bids icon$/) do
    @browser.span(class: "userInitials").click!
    @browser.uls(class: "headerDropMenu")[1].divs[0].click
end

And(/^I verify (Bids|Winning|Currently Outbid|Won) page is loaded$/) do |bid_type|
    case bid_type
    when "Bids"
        b_text = "MY AUCTIONS"
    when "Winning"
        b_text = "WINNING AUCTIONS"
    when "Currently Outbid"
        b_text = "OUTBID AUCTIONS"
    when "Won"
        b_text = "WON AUCTIONS"
    end
    expect(@browser.h2(class: "dashTitle").text).to eq(b_text)
end

And(/^I navigate to winning bids page$/) do
    step('I click on my bids icon')
    @browser.a(href: "/auctions/winning").click
    sleep 1
end

And(/^I navigate to currently outbid bids page$/) do
    step('I click on my bids icon')
    @browser.a(href: "/auctions/outbid").click
    sleep 1
end

And(/^I navigate to won bids page$/) do
    step('I click on my bids icon')
    @browser.a(href: "/auctions/won").click
    sleep 1
end

And(/^I sort the products to bid$/) do
    @browser.select(name: "orderby").select(text: "Ending Today")
end

And(/^I place a bid$/) do
    amount = @browser.input(name: "wsprice").placeholder.split(" ").last
    log("Bid Amount: #{amount}")
    @browser.input(name: "wsprice").set amount
    @browser.button(class: "MuiButton-outlined").click
end

And(/^I confirm a bid$/) do
    @browser.button(text: "Submit").click
end

And(/^I click list view$/) do
    @browser.button(text: "view_list").click
end

And(/^I click grid view$/) do
    @browser.button(text: "apps").click
end

Then(/^I verify page unpaid is loaded$/) do
    expect(@browser.url.split("/").last).to eq("partial")
end

Then(/^I verify products listed in grid view$/) do
    expect(@browser.div(class: "productCardGrid").exists?).to be true
end

Then(/^I verify products listed in list view$/) do
    expect(@browser.div(class: "productCardList").exists?).to be true
end

And(/^I change the per page count$/) do
    @browser.select(name: "resultsPerPage").select(text: "20 per page")
end

Then(/^I verify products are visible$/) do
    expect(@browser.div(class: "productCardGrid").exists?).to be true
end
