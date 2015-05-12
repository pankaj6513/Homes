When /^I can see number of results on the search page for rent$/ do
	@srp.results
	@browser.driver.manage.timeouts.implicit_wait = 300
end
When /^I enter "([^\"]*)" in the search field for rent$/ do |city|
@home_page = Object.const_get('HomePage').new(@browser)
@home_page.search("Norfolk, VA")
end

When /^I select For Rent for rent$/ do
@home_page.selectrent
end

When /^I click the search button for rent$/ do
@home_page.submit
end

Then /^I should see "([^\"]*)" for search for rent$/ do |expected|
sleep 3
@browser.text.should include expected
end

When /^Select For Sale status drop down for rent$/ do
result=@browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section-value"]').text
puts result
if (result == "For Rent")
puts "verified For Sale text is selected"
else
puts "verified For Sale text is not selected"
end

end

When /^Select multiple listing type for rent$/ do
#"//div[contains(@class,'filter-section filter-listingType')]"
listingtype = @browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section filter-listingType _filterSection"]//div[@class="filter-section-value"]').text
puts listingtype
if (listingtype == "Multiple")
puts "verified For Sale text is selected"
else
puts "verified For Sale text is not selected"
end
end

When /^Test Rental check box is checkedornot for rent$/ do
listingtype = @browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section filter-listingType _filterSection"]//div[@class="filter-section-label _openFilter"]').click
#@listingtype1=@browser.input(:xpath, '//*[@value="RENTALS_NEW-HOME"]').click
end

When /^Click on Update Button for rent$/ do
@browser.button(:xpath, '//*[@class="_updater"]').click
#@browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section filter-propertyType _filterSection"]//div[@class="filter-section-label _openFilter"]').click
#@browser.div(:xpath, "//button[contains(@param,'property_type')]").click
end
When /^Click on Update Button on property type for rent$/ do
#@browser.div(:xpath, "//button[contains(@param,'property_type')]").click

@browser.button(:xpath, "//div[@class='filter-section filter-propertyType _filterSection is-active']//button").click
#@browser.button(:xpath, '//*[@param="property_type"]').click
#@browser.button(:xpath, "//div[contains(@id, 'agentContactForm')]//input[contains(@id, 'agent_card_submit')]").click
end


When /^UnChecked only Rental listing type for rent$/ do
#@listingtype1=@browser.input(:xpath, '//*[@value="Resale"]')
@listingtype1=@browser.input(:xpath, '//*[@value="NEW HOME"]').click
end

When /^Unchecked the Senior community for rent$/ do
#@listingtype1=@browser.input(:xpath, '//*[@value="Resale"]')
@listingtype1=@browser.input(:xpath, '//*[@value="SENIOR COMMUNITY"]').click
end

When /^Unchecked the Corporate Housing community for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="CORPORATE HOUSING"]').click
#@listingtype1=@browser.input(:xpath, '//*[@value="FORECLOSURE"]').click
end

When /^Checked only Resale listing type for rent$/ do
#@listingtype1=@browser.input(:xpath, '//*[@value="Resale"]')
@listingtype1=@browser.input(:xpath, '//*[@value="NEW HOME"]')
end

When /^Checked only Rental listing type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="SENIOR COMMUNITY"]').click
#@listingtype1=@browser.input(:xpath, '//*[@value="FORECLOSURE"]')
end

When /^Checked only Foreclosure listing type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="FORECLOSURE"]')
end

When /^User click on property type for rent$/ do
@browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section filter-propertyType _filterSection"]//div[@class="filter-section-value"]').click
end

When /^Unchecked the ALL property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="All"]').click
end

When /^Checked the Residential property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="RESIDENTIAL"]').click
end

When /^Checked the LotsLand property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="LOTS/LAND"]').click
end

When /^Checked the MULTI-FAMILY property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="MULTI-FAMILY"]').click
end

When /^Checked the TOWNHOUSE property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="TOWNHOUSE"]').click
end

When /^Checked the Condominium property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="CONDOMINIUM"]').click
end

When /^Checked the MOBILEMANUFACTURED property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="MOBILE/MANUFACTURED"]').click
end