accounts={
	"Buyer"=>{"email"=>"abdul.auctionsoftware+lp1@gmail.com", "password"=>"12345678"},
	"Seller"=>{"email"=>"abdul.auctionsoftware+seller1@gmail.com", "password"=>"12345678"}
}

Given(/^I navigate to Homepage$/) do
	@browser.goto @base_url
end

Given(/^I log in as \[([^"]*)\]$/) do |type|
	email = accounts[type]["email"]
	password = accounts[type]["password"]

	@browser.text_field(name: "email").set email
	@browser.text_field(name: "password").set password
	@browser.button(type: "submit").click
end

And(/^I verify alert message "([^"]*)"$/) do |drpn|
 	expect(@browser.div(text: drpn).exists?).to be true
end


Given(/^I verify homepage is loaded$/) do
	@browser.div(class: "loginCnt").exists?
end

Given(/^I logged in$/) do
	@browser.goto @base_url
	step('I log in as [Buyer]')
end

Given(/^I logged in as seller$/) do
	@browser.goto @base_url
	step('I log in as [Seller]')
end

And(/^I verify page \[([^"]*)\] is loaded$/) do |link|
 expect(@browser.url.split("/").last).to eq(link)
end


And(/^I click on logout icon$/) do
	@browser.span(class: "userInitials").click!
	@browser.uls(class: "headerDropMenu")[1].divs[2].click
end

And(/^I click on \[([^"]*)\]$/) do |text|
 @browser.div(text: text).click
end

And(/^I click on \[([^"]*)\] button$/) do |text|
 @browser.button(text: text).click
end
