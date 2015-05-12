@portal @regression @forsale @forsalesrp
Feature: Submitting Property Lead and Mortgage Lead from a SEARCH page
	As a user
	I want to contact a listing agent
	So they can give me a tour

	Background: I am on a Search Results Page
		Given I am on a For Sale Search Results Page for sale
		When I click the Request Info Button for sale
		And I see the Agent Contact Form for sale

	Scenario: Submitting A For Sale Request Info Property Lead From SRP wihtout filling out the required fields (Name, Email, Phone)

	#  (Clicking submit w/No: Name, Email, Phone)
		And I click the submit button for sale
		Then I should see "Please enter a first and last name." for sale

    #  (Clicking submit w/No: Email, Phone)
		And I enter "Test Lead" in the name field for sale
		And I click the submit button for sale
		Then I should see "Please enter an email address." for sale

    #  (Clicking submit w/No: Phone)
		And I enter "should_fail@regression.test" in the email field for sale
		And I click the submit button for sale
		Then I should see "Phone number with Area Code is required" for sale
	
	Scenario: Submitting A For Sale Request Info Property Lead Only (uncheck get prequalified) From SRP
		And I enter "Test Lead" in the name field for sale
		And I enter "FS_SRP@regression.test" in the email field for sale
		And I enter "1234567890" in the phone field for sale
		And I uncheck the get prequalified box for sale
		And I click the submit button for sale
		Then I should see "Thank you for your interest in this property." for sale
	@forsalesrp1
	Scenario: Submitting A For Sale Request Info Property Lead and a Mortgage Lead From SRP
		And I enter "Test Lead" in the name field for sale
		And I enter "FS_SRP_M@regression.test" in the email field for sale
		And I enter "1234567890" in the phone field for sale
		And I click the submit button for sale
		Then I should see the myHomes Overlay Agent Card for sale
		Then I should see "Thank you for your interest in this property." for sale
		And I select "Good 680 - 719" from the creditscore dropdown for sale
		And I select "Yes, in last 2 years" from the bankruptcy History dropdown for sale
		And I select "10%" from the downPayment dropdown for sale
		And I click the Get Prequalified button for sale
		Then I should see "Thank you for your interest in this property." for sale



