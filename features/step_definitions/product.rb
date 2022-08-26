And(/^I click on view more info$/) do
	sleep 2
    a = @browser.spans(text: "arrow_right_alt").count
    rand_span = rand(0..a-1)
    @browser.execute_script('arguments[0].scrollIntoView();', @browser.spans(text: "arrow_right_alt")[rand_span])
    sleep 1
    @product_title = @browser.h2s(class: "gridProdTitle")[rand_span].text.split("- ").last
    
    @browser.divs(class: "moreInfo")[rand_span].click
    @browser.element.wd.click
    @browser.divs(class: "moreInfo")[rand_span].click

    sleep 1
end

And(/^I verify product page is loaded$/) do
	sleep 1
	p_title = @browser.div(class: "pvProductInfo").h2.text.split("- ").last
	expect(p_title).to eq(@product_title)
	sleep 1
end

And(/^I place (hard|proxy) bid in the product$/) do |bid_type|
	min_bid = @browser.divs(class: "pabChild")[2].h4.text.gsub(/[^0-9\.]/, '')
	if bid_type == "hard"
		@browser.text_fields(name: "wsprice",placeholder: "Min bid #{@browser.divs(class: "pabChild")[2].h4.text}")[2].set (min_bid.to_i + 5)
		@browser.buttons(type: "submit")[13].click!
	else
		@browser.text_fields(name: "wsprice",placeholder: "Min bid #{@browser.divs(class: "pabChild")[2].h4.text}")[1].set (min_bid.to_i + 5)
		@browser.buttons(type: "submit")[12].click!
	end
	@browser.div(class: "actionWrapper").buttons(type: "button")[1].click!
end

And(/^I click on BUY NOW link$/) do
	# @browser.buttons(type: "submit")[14].click!
	if @browser.divs(class: "primButton")[3].visible?
		@browser.divs(class: "primButton")[3].click
	else
		step('I click on view more info')
		step('I click on BUY NOW link')
	end
	@browser.div(class: "actionWrapper").button(type: "submit").click!
	sleep 5
end

And(/^I verify product is in cart$/) do
	sleep 1
	p_list = @browser.h2s(class: "listProdTitle").map {|a| a.text}
	expect(p_list.include? @product_title).to be true
end

And(/^I click on buy now cart icon$/) do
	@browser.buttons(type: "button")[1].click!
	@browser.ul(class: "headerDropMenu").divs[0].click
end
