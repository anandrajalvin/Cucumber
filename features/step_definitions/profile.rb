
And(/^I click on profile icon$/) do
	@browser.span(class: "userInitials").click!
	@browser.uls(class: "headerDropMenu")[1].divs[1].click
end


And(/^I edit first name$/) do
	@f_name = "Test Cucumber"
	@browser.text_field(name: "first_name").send_keys [:control, 'a'], :backspace
	@browser.text_field(name: "first_name").set @f_name
	@browser.button(type: "submit").click
end


And(/^I verified first name is updated$/) do
 	expect(@browser.text_field(name: "first_name").value).to eq(@f_name)
end
 
And(/^I click on my transaction icon$/) do
    @browser.a(href: "/transactions").click!
end
 
And(/^I click on my purchases icon$/) do
    @browser.a(href: "/purchases/buynow").click!
end 

