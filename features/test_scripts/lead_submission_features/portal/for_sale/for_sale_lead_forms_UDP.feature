@portal @regression @forsale @leadsaleudp
Feature: Submitting Property Lead and Mortgage Lead from a DETAILS page
	As a user
	I want to contact a listing agent
	So they can give me a tour

	Background: I am on a For Sale details page
		Given I am on a For Sale details page two for sale

	Scenario: Submitting A For Sale Request Info Property Lead and a Mortgage Lead From UDP
		When I enter "Test Lead" in the name field for sale
		And I enter "FR_Details_M@regression.test" in the email field for sale
		And I enter "1234567890" in the phone field for sale
		And I click the Send button for sale
		Then I should see the lead Confirm pop up for sale
		And I select "Good 680 - 719" from the creditscore dropdown for sale
		And I select "Yes, in last 2 years" from the bankruptcy History dropdown for sale
		And I select "20%" from the downPayment dropdown for sale
		And I click the Get Prequalified button for sale
		Then I should see "Thank you for your interest in this property." for sale
@leadsaleudp1
  	Scenario: Submitting A For Sale Request Info Property Lead Only (uncheck get prequalified) From udp
		And I enter "Test Lead" in the name field for sale
		And I enter "testlead@regression.test" in the email field for sale
		And I enter "1234567890" in the phone field for sale
		And I uncheck the get prequalified box for sale
		And I click the Send button for sale
		Then I should see "Thank you for your interest in this property." for sale
