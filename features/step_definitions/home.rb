And(/^I click on logo$/) do
    sleep 1
    @browser.a(class:"ASlogo").click
end

And(/^I click on about link$/) do
    sleep 1
    @browser.a(href:"/about").click!
end

And(/^I click on live auction link$/) do
    sleep 1
    @browser.a(href:"/auction").click!
end

And(/^I click on contact link$/) do
    sleep 1
    @browser.a(href:"/contact").click!
end