And(/^I click on cart icon$/) do
	@browser.buttons(type: "button")[1].click!
	@browser.ul(class: "headerDropMenu").divs[1].click
end

And(/^I click on buynow cart icon$/) do
	@browser.buttons(type: "button")[1].click!
	@browser.ul(class: "headerDropMenu").divs[0].click
end

