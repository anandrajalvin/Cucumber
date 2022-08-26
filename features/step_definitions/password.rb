And(/^I input valid email address$/) do
    @browser.text_field(name: "email").set "abdul.auctionsoftware+lp1@gmail.com"
end

And(/^I click on SEND RESET PASSWORD LINK button$/) do
    @browser.button(type: "submit").click
end

And(/^I click on Forgot password link$/) do
    @browser.a(href: "/forgot_password").click
    @browser.a(href: "/forgot_password").click
end



And(/^I change password by filling old password and new password$/) do
    @browser.input(name: "current_password").set "12345678"
    @browser.input(name: "new_password").set "123456789"
    @browser.input(name: "confirm_password").set "123456789"
    @browser.button(text: "change").click
end

And(/^I reset password with old one$/) do
    @browser.input(name: "current_password").set "123456789"
    @browser.input(name: "new_password").set "12345678"
    @browser.input(name: "confirm_password").set "12345678"
    @browser.button(text: "change").click
end
