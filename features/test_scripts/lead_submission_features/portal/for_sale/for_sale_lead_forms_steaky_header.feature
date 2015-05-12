@portal @regression @forsale @steakyheader @no @firstleadsale
Feature: Submitting Property Lead from property details page
	As a user
	I want to contact a listing agent by submitting the Sticky Header Form
	So they can give me a tour

	Background: I am on a For Sale details page
		Given I am on a For Sale details page two for sale
		And I wait for 5 seconds for sale
		When I click the Request Info Button on steaky header for sale
		And I see the Agent Contact Form from steaky header for sale

		Scenario: Submitting A For Sale Request Info Property Lead form from steaky header
		And I enter "Test Lead" in the steaky header form name field for sale
		And I enter "FS_UDP_Sticky_H1@regression.com" in the steaky header form email field for sale
		And I enter "1234567890" in the steaky header form phone field for sale
		And I click the steaky header form submit button for sale
		Then I should see the myHomes Overlay Agent Card for sale
		Then I should see "Thank you for your interest in this property." for sale
		
		Scenario: Submitting A For Sale Request Info Property Lead form from steaky header with checkbox unselected
		And I enter "Test Lead" in the steaky header form name field for sale
		And I enter "FS_UDP_Sticky_H2@regression.com" in the steaky header form email field for sale
		And I enter "1234567890" in the steaky header form phone field for sale
		And I deselect Get prequalified today by a mortgage lender checkbox for sale
		And I click the steaky header form submit button for sale
		Then I should see the myHomes Overlay Agent Card for sale
		Then I should see "Thank you for your interest in this property." for sale