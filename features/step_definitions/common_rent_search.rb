
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
result=@browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section-value"]').when_present(timeout = 90).text
puts result
if (result == "For Rent")
puts "verified For Sale text is selected"
else
puts "verified For Sale text is not selected"
end

end

When /^Select multiple listing type for rent$/ do
#"//div[contains(@class,'filter-section filter-listingType')]"
listingtype = @browser.div(:xpath,  '//*[@id="wrapper"]//div[@class="filter-section filter-listingType _filterSection"]//div[@class="filter-section-value"]').when_present(timeout = 90).text
puts listingtype
if (listingtype == "Multiple")
puts "verified For Sale text is selected"
else
puts "verified For Sale text is not selected"
end
end

When /^Test Rental check box is checkedornot for rent$/ do
@homepage.check_rental
end

When /^Unchecked rental listing type$/ do
@homepage.unchecked_rental_listingtype
end
When /^Click on Update Button for rent$/ do
@homepage.click_on_updatebutton_rent
end

When /^Click on Update Button on property type for rent$/ do
@homepage.click_updatebutton_property_rent
end


When /^UnChecked only Rental listing type$/ do
#@listingtype1=@browser.input(:xpath, '//*[@value="Resale"]')
@listingtype1=@browser.input(:xpath, '//*[@value="NEW HOME"]').when_present(timeout = 90).click
end

When /^Unchecked the Senior community$/ do
@homepage.unchecked_SeniorCommunity_listingtype
end

When /^Unchecked the Corporate Housing community$/ do
@homepage.unchecked_CorporateHousing_listingtype
end

When /^Checked only Resale listing type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="NEW HOME"]')
end

When /^Checked only Rental listing type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="SENIOR COMMUNITY"]').when_present(timeout = 90).click
end

When /^Checked only Foreclosure listing type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="FORECLOSURE"]')
end

When /^User click on property type for rent$/ do
@homepage.click_on_propertyType_Rent
end

When /^Unchecked the ALL property type for rent$/ do
@homepage.unchecked_all_propertyType_rent
end

When /^Checked the Residential property type for rent$/ do
@homepage.checked_residentialProperty_rent
end
When /^Checked the APARTMENT property type$/ do
@homepage.checked_apartmentProperty_rent
end


When /^Checked the Condominium property type for rent$/ do
@homepage.checked_CondominiumProperty_rent
end

When /^Checked the LotsLand property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="LOTS/LAND"]').when_present(timeout = 90).click
end

When /^Checked the MULTI-FAMILY property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="MULTI-FAMILY"]').when_present(timeout = 90).click
end

When /^Checked the TOWNHOUSE property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="TOWNHOUSE"]').when_present(timeout = 90).click
end

=begin
When /^Checked the Condominium property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="CONDOMINIUM"]').when_present(timeout = 90).click
end
=end
When /^Checked the MOBILEMANUFACTURED property type for rent$/ do
@listingtype1=@browser.input(:xpath, '//*[@value="MOBILE/MANUFACTURED"]').when_present(timeout = 90).click
end

