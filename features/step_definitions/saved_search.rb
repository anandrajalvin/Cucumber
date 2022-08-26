And(/^I search "([^"]*)"$/) do |txt|
	@s_query = txt
	@browser.text_field(type: "search").set txt
	@browser.buttons(type: "button")[0].click
end

And(/^I save the search$/) do
    @browser.buttons(type: "button")[4].click
end

And(/^I navigate to my saved searches page$/) do
	step('I click on profile icon')
	sleep 2
	@browser.a(href: "/saved_search").click
	sleep 1
end

And(/^I verify the saved search is visible$/) do
	sleep 2
	expect(@browser.td(text: @s_query).exists?).to be true
end