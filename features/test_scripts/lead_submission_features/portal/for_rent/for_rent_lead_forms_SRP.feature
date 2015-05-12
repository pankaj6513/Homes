@regression @portal @forrent @pro @rentsrp
Feature: Submitting Check Availability Lead a for rent SEARCH page
	As a user
	I want to contact a listing agent
	So they can give me a tour

	Background: I am on a For Rent SEARCH page
		Given I am on a For Rent Search Results Page for rent
		When I click the Request Info Button for rent
		And I see the Agent Contact Form for rent
		And I enter "Test Lead" in the name field for rent
		And I enter "1234567890" in the phone field for rent

	Scenario: Submitting A For Rent Request Info Property Lead 
		And I enter "For_Rent_SRP@regression.test" in the email field for rent
		And I click the submit button for rent
		Then I should see "Thank you for your interest in this property" for rent
		Then I should see the Credit Repair Form in SRP for rent
		And I should see "Poor Credit Can Keep You From Getting The Home You Really Want!" for rent
		And I click the Submit button in the form for rent
		Then I should see the Lead Confirmation for rent
		Then I should see "Thank you for your interest in this property" for rent
     @rentsrp1
	Scenario: Submitting A For Rent Request Info Property Lead
		And I enter "ForRent_SRP_Uncheck@regression.test" in the email field for rent
		And I uncheck the improve your credit score box for rent
		And I click the submit button for rent
		Then I should see "Thank you for your interest in this property" for rent

