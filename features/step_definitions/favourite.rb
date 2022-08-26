
And(/^I click on favourite icon$/) do
	# sleep 1
 #    a = @browser.divs(class: "favoriteCheck").count
 #    rand_div = rand(0..a)
 #    div_ele = @browser.divs(class: "favoriteCheck")[rand_div]
 #    sleep 1
 #    @browser.divs(class: "favoriteCheck")[rand_div].checkbox.click
 #    binding.pry
 #    if div_ele.span.text == "favorite_border"
 #        div_ele.click
 #    end
 	@browser.divs(class: "favoriteCheck")[0].click
 	sleep 1
    @product_title = @browser.h2s(class: "gridProdTitle")[0].text
end

And(/^I navigate to favourite page$/) do
    step('I click on profile icon')
    @browser.a(href: "/watchlist/watchlist").click!
    sleep 1
end

And(/^I verify the product is visible$/) do
    sleep 2
    f_list = @browser.h2s(class: "gridProdTitle").map {|a| a.text}
    expect(f_list.include? @product_title).to be true
end

And(/^I click on heart icon$/) do
    @browser.divs(class: "favoriteCheck")[0].click
end

And(/^I revert back the changes$/) do
	sleep 2
	# binding.pry
    @browser.divs(class: "favoriteCheck")[0].click
    sleep 2
end