require 'rspec'

Before do
 @browser = Watir::Browser.new :chrome
 @base_url = "https://largeproduct-test.ecommerce.auction/"
 @browser.window.maximize
 @browser.driver.manage.timeouts.implicit_wait = 10
end


After do
 @browser.driver.quit
end