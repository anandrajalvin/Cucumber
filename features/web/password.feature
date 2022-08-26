@automation @web

Feature: Password

@lp-009
Scenario: Check whether user able to reset password
 Given I navigate to Homepage 
 When I click on Forgot password link
 Then I verify page [forgot_password] is loaded
 And I input valid email address
 And I click on SEND RESET PASSWORD LINK button 
 And I verify alert message "Please check email to reset your password"
 
@lp-021
Scenario: Check whether the user able to change the password
 Given I logged in
 When I click on profile icon
 Then I verify page [profile] is loaded
 When I click on [Change Password]
 And I change password by filling old password and new password
 Then I verify alert message "Password changed successfully."
 And I reset password with old one
 Then I verify alert message "Password changed successfully."

 