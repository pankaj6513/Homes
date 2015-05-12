@portal @regression @rhe 
Feature: Submitting Request Home Estimate Lead 
	As a user
	I want to submit a Request Home Estimate
	So I can get a Home Estimate

	Background: I am on the Request Home Estimate page
		Given I am on the Request Home Estimate page

	Scenario: Submitting Request Home Estimate Form
		When I enter "150 Main Street" in the address field
		And I enter "Your Hometown" in the city field
		And I select "Florida" from the state dropdown
		And I enter "33333" in the zip field
		And I enter "Test" in the first name field
		And I enter "Lead" in the last name field
		And I enter "1234567890" in the phone field
		And I enter "Request_Home_Estimate@regression.test" in the email field
		And I click the submitCMARequestForm Button
		Then I should see "Thank you for completing the free home market analysis. An agent will be contacting you soon with information regarding the home and surrounding real estate market."

		
		

	