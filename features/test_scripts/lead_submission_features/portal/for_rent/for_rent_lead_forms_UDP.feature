@regression @portal @forrent @pro @RentLeadUDP
Feature: Submitting Check Availability Lead from a For Rent details page
	As a user
	I want to contact a listing agent
	So they can give me a tour

	Background: I am on a For Rent details page
		Given I am on a For Rent details page for rent
		When I enter "Test Lead" in the name field for rent
		And I enter "1234567890" in the phone field for rent

	Scenario: Submitting A For Rent Request Info Property Lead and the Improve Your Credit Score Form
		And I enter "FR_UDP_Mortgage@regression.test" in the email field for rent
		And I click the Send button for rent
		Then I should see "Thank you for your interest in this property" for rent
		Then I should see the Credit Repair Form for rent
		And I should see "Poor Credit Can Keep You From Getting The Home You Really Want!" for rent
		And I click the Submit button in the form for rent
		Then I should see the Lead Confirmation for rent
		Then I should see "Thank you for your interest in this property" for rent

	Scenario: Submitting A For Rent Request Info Property Lead 
		And I enter "FR_Uncheck_UDP@regression.test" in the email field for rent
		And I uncheck the improve your credit score box for rent
		And I click the Send button for rent
		Then I should see "Thank you for your interest in this property." for rent








