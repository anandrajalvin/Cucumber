And(/^I fill all inputs for (seller|buyer)$/) do |u_type|
    if u_type == "seller"
    	fill_seller_inputs
    else
    	fill_buyer_inputs
    end
end

And(/^I click on CREATE MY ACCOUNT button$/) do
    @browser.button(type: "submit").click
    sleep 1
    @browser.div(class: "primButton").button(type: "button").click
end

And(/^I click on Register link$/) do
    @browser.a(href: "/registration").click
    # @browser.a(href: "/forgot_password").click
end

def fill_seller_inputs
	@browser.buttons(type: "button")[2].click!

	@browser.text_field(name: "first_name").set "Cucumber Auto"
	@browser.text_field(name: "last_name").set "User"
	@browser.text_field(name: "email").set "#{rand(36**4).to_s(36)}@auctionsoftware.com"
	@browser.text_field(name: "phone").set Faker::PhoneNumber.cell_phone
	@browser.text_field(name: "password").set "12345678"
	@browser.text_field(name: "confirm_password").set "12345678"
	@browser.text_field(name: "companyname").set "Test Cucumber Organization"
	@browser.text_field(name: "address1").set "1802 Industrial Boulevard "
	@browser.text_field(name: "address2").set "Suite 1010"
	@browser.select(name: "state").select(text: "Texas")
	@browser.text_field(name: "city").set "Colleyville"
	@browser.text_field(name: "zip").set "76092"
end

def fill_buyer_inputs
	@browser.text_field(name: "first_name").set "Cucumber Auto"
	@browser.text_field(name: "last_name").set "User"
	@browser.text_field(name: "email").set "#{rand(36**4).to_s(36)}@auctionsoftware.com"
	@browser.text_field(name: "phone").set Faker::PhoneNumber.cell_phone
	@browser.text_field(name: "password").set "12345678"
	@browser.text_field(name: "confirm_password").set "12345678"
	@browser.text_field(name: "address1").set "1802 Industrial Boulevard "
	@browser.text_field(name: "address2").set "Suite 1010"
	@browser.select(name: "state").select(text: "Texas")
	@browser.text_field(name: "city").set "Colleyville"
	@browser.text_field(name: "zip").set "76092"
end