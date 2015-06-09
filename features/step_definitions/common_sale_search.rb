=begin
When /^I can see number of results on the search page$/ do
	@srp.results
	@browser.driver.manage.timeouts.implicit_wait = 300
end

When /^I enter "([^\"]*)" in the search field$/ do |city|
@home_page = Object.const_get('HomePage').new(@browser)
@home_page.search("Norfolk, VA")
#@home_page.search("23456")
end


When /^I select For Rent$/ do
puts 'Executed'
@home_page.selectrent
end




When /^I click the search button$/ do
puts 'Search Executed'
@home_page.submit
end
=end



Then /^I should see "([^\"]*)" for sale$/ do |expected|
sleep 3
puts 'Text match'
@expected=expected
puts expected
@browser.driver.manage.timeouts.implicit_wait = 50
@browser.text.should include expected
@browser.driver.manage.timeouts.implicit_wait = 30
end

When /^Select For Sale status drop down$/ do
puts 'drop down selected'
result=@browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section-value"]').when_present(timeout = 90).text
puts result
if (result == "For Rent")
puts "verified For Sale text is selected"
else
puts "verified For Sale text is not selected"
end

end

When /^Select multiple listing type$/ do
puts 'Select listing type'
#"//div[contains(@class,'filter-section filter-listingType')]"
listingtype = @browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section filter-listingType _filterSection"]//div[@class="filter-section-value"]').when_present(timeout = 90).text
puts listingtype
if (listingtype == "Multiple")
puts "verified For Sale text is selected"
else
puts "verified For Sale text is not selected"
end
end

When /^Test Resale check box is checkedornot$/ do
   @homepage.check_resale
end

When /^Click on Update Button$/ do
   @homepage.click_listing_update_button
end

When /^Click on Update Button on property type$/ do
  @homepage.click_on_update_button_propertyType
end


When /^Unchecked New Home$/ do
  @homepage.unchecked_newhomes
end

When /^Unchecked Foreclosure$/ do
  @homepage.unchecked_foreclosure
end

When /^Unchecked the RESALE$/ do
  @homepage.unchecked_resale
end

When /^Checked only Resale listing type$/ do
  @homepage.checked_on_resale
end

When /^Checked only New Home listing type$/ do
  @homepage.checked_newhome
end

When /^Checked only Foreclosure listing type$/ do
  @homepage.checked_foreclosure
end

When /^User click on property type$/ do
 @homepage.click_on_propertyType
end

When /^Unchecked the ALL property type$/ do
 @homepage.unchecked_all_in_propertyType
end

When /^Checked the Residential property type$/ do
 @homepage.checked_residential_in_propertyType
end

When /^Checked the LotsLand property type$/ do
 @homepage.checked_lotsland_in_propertyType
end

When /^Checked the MULTI-FAMILY property type$/ do
 @homepage.checked_multifamily_in_propertyType
end

When /^Checked the TOWNHOUSE property type$/ do
 @homepage.checked_townhouse_in_propertyType
end

When /^Checked the Condominium property type$/ do
@homepage.checked_condominium_in_propertyType
end

When /^Checked the MOBILEMANUFACTURED property type$/ do
@homepage.checked_MobileManufactired_in_propertyType
#@listingtype1=@browser.input(:xpath, '//*[@value="MOBILE/MANUFACTURED"]').when_present(timeout = 90).click
end

When /^Wait for popup$/ do
sleep 5
@browser.send_keys :escape 
sleep 5
end




