Given /^I am on a For Sale details page two for sale$/ do
@leadsale = Object.const_get('LeadSale').new(@browser)
@leadsale.visit
end

Given /^I am on a For Sale Search Results Page for sale$/ do
@leadsalesrp = Object.const_get('LeadSaleSRP').new(@browser)
@leadsalesrp.visit
end


Given /^I am on the home page$/ do
@home_page = Object.const_get('HomePage').new(@browser)
@home_page.visit
end

Given /^I am on a For Rent Search Results Page for rent$/ do
@rent_srp = Object.const_get('LeadRentSRP').new(@browser)
@rent_srp.visit
end

Given /^I am on a For Rent details page for rent$/ do
@rent_steaky = Object.const_get('LeadRentSteaky').new(@browser)
@rent_steaky.visit
#	@browser.goto "http://www.homes.com/property/91A9-west-main-street-fl-33333/id-223691263"
end

Given /^I am on a FRC Search Results Page for rent$/ do
@rent_frcleadsrp = Object.const_get('FrcRentLeadSRP').new(@browser)
@rent_frcleadsrp.visit
#	@browser.goto "http://www.homes.com/rentals/58701/apartments"
end

Given /^I am on an FRC details page for rent$/ do
@rent_frcleadudp = Object.const_get('FrcRentLeadUDP').new(@browser)
@rent_frcleadudp.visit
#	@browser.goto "http://www.homes.com/property/christina-lakes-test-minot-nd-58701/id-190757880/"
end