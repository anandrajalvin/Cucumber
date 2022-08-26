
And(/^I click on My Auctions active tab$/) do
	@browser.spans(class: "d-flex")[1].click
	@browser.a(href: "/seller/auctions/open").click
end

And(/^I click on My Lots active tab$/) do
	@browser.spans(class: "d-flex")[2].click
	@browser.a(href: "/seller/lots/open").click
end

And(/^I verify (auctions|lots) page is loaded$/) do |p_type|
	if p_type == "auctions"
		expect(@browser.h2(class: "dashTitle").text).to eq("MY AUCTIONS")
	else
		expect(@browser.h2(class: "dashTitle").text).to eq("MY LOTS")
	end
end

And(/^I click on ADD NEW AUCTION link$/) do
	@browser.button(type: "button",class: "addTempBtn").click
end

And(/^I click on ADD NEW SINGLE LISTING link$/) do
	@browser.button(type: "button",class: "btnOutlined").click
end

And(/^I fill all fileds for auction$/) do
	@browser.text_field(name: "title").set "Locks #{rand(111...999)}"

	end_date = (Date.today + 5).strftime("%d")

	@browser.divs(class:"MuiInputAdornment-root MuiInputAdornment-positionEnd")[3].click
	@browser.ps(class:"MuiTypography-root MuiTypography-body2 MuiTypography-colorInherit")[end_date.to_i].click!
	@browser.div(class:"MuiDialogActions-root MuiPickersModal-withAdditionalAction MuiDialogActions-spacing").buttons[2].click

	@browser.div(id: "mui-component-select-project_id").click
	@browser.lis(class:"MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button")[1].click
	# @browser.element.wd.click

	#ckeditor
	sleep 3
	
	@browser.execute_script "CKEDITOR.instances.editor1.setData( 'Test' );"
	
	#image upload
	dir = File.expand_path(File.dirname("./.."))
	img_path = File.join(dir, 'locks.jpeg')
	@browser.input(type: "file").set(img_path)
	sleep 2
end


And(/^I fill all fileds for lot$/) do
	@browser.text_field(name: "title").set "Pen #{rand(111...999)}"
	
	@browser.select(name: "location_id").select(text: "US")
	@browser.select(name: "categoryTypeId").select(text: "Electronics")
	@browser.select(name: "subCategoryTypeId").select(text: "Television")
	@browser.select(name: "conditionTypeId").select(text: "Great")

	end_date = (Date.today + 5).strftime("%d")

	@browser.divs(class:"MuiInputAdornment-root MuiInputAdornment-positionEnd")[3].click
	@browser.ps(class:"MuiTypography-root MuiTypography-body2 MuiTypography-colorInherit")[end_date.to_i].click!
	@browser.div(class:"MuiDialogActions-root MuiPickersModal-withAdditionalAction MuiDialogActions-spacing").buttons[2].click

	#ckeditor
	sleep 3
	@browser.execute_script "CKEDITOR.instances.editor1.setData( 'Test lot desc' );"

	
	@browser.checkbox(name: "auction").check
	@browser.checkbox(name: "buynow").check

	price = rand(111...999)
	@browser.text_field(name: "sprice").set price
	@browser.text_field(name: "rprice").set (price + 10)
	@browser.text_field(name: "bprice").set (price + 50)
	
	
	


	#image upload
	dir = File.expand_path(File.dirname("./.."))
	img_path = File.join(dir, 'pens.jpg')
	@browser.input(type: "file").set(img_path)
	sleep 2
end

And(/^I click on submit button$/) do
	@browser.span(text: "Submit").click!
	sleep 1
end


And(/^I click on draft button$/) do
	@browser.span(text: "Save as Draft").click
	sleep 1
end

