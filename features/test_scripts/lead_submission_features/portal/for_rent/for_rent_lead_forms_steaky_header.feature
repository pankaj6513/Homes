@portal @regression @forrent @steakyheader @no @steakyheader1
Feature: Submitting Property Lead from property details page
	As a user
	I want to contact a listing agent by submitting the Sticky Header Form
	So they can give me a tour

	Background: I am on a For Rent details page
		Given I am on a For Rent details page for rent
		When I click the Request Info Button on steaky header for rent
		And I see the Agent Contact Form from steaky header for rent

	 Scenario: Submitting A For Rent Request Info Property Lead form from steaky header with checkbox unselected
		And I enter "Test Lead" in the steaky header form name field for rent
		And I enter "FS_SRP_Sticky_H2@regression.com" in the steaky header form email field for rent
		And I enter "1234567890" in the steaky header form phone field for rent
		And I uncheck the improve your credit score box for rent
		And I click the steaky header form submit button for rent
		Then I should see the myHomes Overlay Agent Card for rent
		Then I should see "Thank you for your interest in this property" for rent
     @steakyheader2
	Scenario: Submitting A For Rent Request Info Property Lead form from steaky header for rent
		And I enter "Test Lead" in the steaky header form name field for rent
		And I enter "FS_SRP_Sticky_H1@regression.com" in the steaky header form email field for rent
		And I enter "1234567890" in the steaky header form phone field for rent
		And I click the submit button for rent
		Then I should see the myHomes Overlay Agent Card for rent
		And I should see "Poor Credit Can Keep You From Getting The Home You Really Want!" for rent
		And I click the Submit button in the form for rent
		Then I should see the Lead Confirmation for rent
		Then I should see "Thank you for your interest in this property" for rent
	

		

		