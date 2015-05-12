When /^I can see number of results on the search page for rent$/ do
@srp.results
end

When /^I click the Request Info Button for rent$/ do
@leadsalesrp = Object.const_get('LeadSaleSRP').new(@browser)
@leadsalesrp.RequestInfoButton
end

When /^I see the Agent Contact Form for rent$/ do
@rent_frcleadsrp = Object.const_get('FrcRentLeadSRP').new(@browser)
@rent_frcleadsrp.AgentContactForm
end

When /^I enter "([^\"]*)" in the name field for rent$/ do |name|
@leadsalesrp = Object.const_get('LeadSaleSRP').new(@browser)
@leadsalesrp.firstname(name)
end

When /^I enter "([^\"]*)" in the email field for rent$/ do |email|
@leadsalesrp.emailaddress(email)
end

When /^I enter "([^\"]*)" in the phone field for rent$/ do |phone|
@leadsalesrp.phonenumber(phone)
end

When /^I click the submit button for rent$/ do
@rent_steaky = Object.const_get('LeadRentSteaky').new(@browser)
@rent_steaky.ClickSubmitButton
end

When /^I deselect Get prequalified today by a mortgage lender checkbox for rent$/ do
@browser.checkbox(:id, "mortgage_opt_in").clear
end

Then /^I should see "([^\"]*)" for rent$/ do |expected|
sleep 3
@browser.text.should include expected
end

When /^I select "([^\"]*)" from the creditscore dropdown for rent$/ do |creditscore|
if (@leadsaleudp != nil)
@leadsaleudp=@leadsaleudp 
puts @leadsaleudp 
puts "is not nil"
else
@leadsaleudp=@leadsalesrp 
puts @leadsaleudp 
puts "is nil"
end
@leadsaleudp.selectcredit(creditscore)
end

When /^I select "([^\"]*)" from the bankruptcy History dropdown for rent$/ do |bankruptcyHistory|
@leadsaleudp.historydropdown(bankruptcyHistory)
end

When /^I select "([^\"]*)" from the downPayment dropdown for rent$/ do |downPayment|
@leadsaleudp.downpaymentdropdown(downPayment)
end

When /^I click the Get Prequalified button for rent$/ do
@leadsaleudp.prequalifiedbutton
end

Then /I should see the lead Confirm pop up for rent$/ do
@leadsaleudp = Object.const_get('LeadSaleUDP').new(@browser)
@leadsaleudp.confirmpopup
end

When /^I click the Request Info Button on steaky header for rent$/ do
@leadsale = Object.const_get('LeadSale').new(@browser)
@leadsale.clickrequestbutton
end

Given /^I wait for (\d+) seconds for rent?$/ do |n|
  sleep(n.to_i)
end

When /^I see the Agent Contact Form from steaky header for rent$/ do
@leadsale.agentsteakyheader
end

When /^I enter "([^\"]*)" in the steaky header form name field for rent$/ do |name|
@leadsale.steakyheaderformname(name)
end

When /^I enter "([^\"]*)" in the steaky header form email field for rent$/ do |email|
@leadsale.steakyheaderformemail(email)
end

When /^I enter "([^\"]*)" in the steaky header form phone field for rent$/ do |phone|
@leadsale.steakyheaderformphone(phone)
end

When /^I click the steaky header form submit button for rent$/ do
@leadsale.steakysubmit
end

Then /^I should see the myHomes Overlay Agent Card for rent$/ do
@leadsale = Object.const_get('LeadSale').new(@browser)
@leadsale.myhomeagentcard
end

When /^I select Get prequalified today by a mortgage lender checkbox for rent$/ do
@leadsale.checkbox
end

When /^I click the Send button for rent$/ do
@leadsalesrp.sendbutton
end

When /^I uncheck the get prequalified box for rent$/ do
@leadsalesrp.uncheckbox
end

Then /^I should see the Credit Repair Form in SRP for rent$/ do
@rent_srp = Object.const_get('LeadRentSRP').new(@browser)
@rent_srp.creditrepairform
end

Then /^I should see the Credit Repair Form for rent$/ do
@rent_srp = Object.const_get('LeadRentSRP').new(@browser)
@rent_srp.credit_repair_form
end

When /^I click the Submit button in the form for rent$/ do
@rent_steaky = Object.const_get('LeadRentSteaky').new(@browser)
@rent_steaky.submit
end

Then /^I should see the Lead Confirmation for rent$/ do
@rent_srp = Object.const_get('LeadRentSRP').new(@browser)
@rent_srp.leadconfirmation
end

When /^I uncheck the improve your credit score box for rent$/ do
@frc_rent_srp = Object.const_get('FrcRentLeadSRP').new(@browser)
@frc_rent_srp.creditcheckbox
end

When /^I click the Request Info Button from the first listing for rent$/ do
@frc_rent_srp = Object.const_get('FrcRentLeadSRP').new(@browser)
@frc_rent_srp.requestinfo_listing
end

When /^I enter "([^\"]*)" in the FRC email field for rent$/ do |email|
@frc_rent_srp = Object.const_get('FrcRentLeadSRP').new(@browser)
@frc_rent_srp.emailfield(email)
end

When /^I click the FRC submit button for rent$/ do
@frc_rent_srp.frcsubmit
end

When /^I enter "([^\"]*)" in the emailAddress field for rent$/ do |emailAddress|
@frc_rent_udp = Object.const_get('FrcRentLeadUDP').new(@browser)
@frc_rent_udp.emailaddress(emailAddress)
end


