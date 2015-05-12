@regression @search @rentfilter
Feature: Searching for For Sale listings
	As a User
	I want to search for listings in an area
	So I can find the perfect home

	Background: I am on a Home Page
		Given I am on the home page
		When I enter "<city>" in the search field for rent
		And I select For Rent
		And I click the search button for rent
		Then I should see "Norfolk, VA Homes for Rent" for rent
		
	Scenario: Submit the form only with all Listing type with property ALL	
		When Test Rental check box is checkedornot for rent
		Then Click on Update Button for rent
	@rental1
	Scenario: Submit the form only with Rental Listing type with property ALL
	   When Test Rental check box is checkedornot for rent
	   Then Checked only Rental listing type for rent
	   Then Click on Update Button for rent
	
	@rental2
    Scenario: Submit the form only with Corporate Housing Listing type with property ALL
	   When Test Rental check box is checkedornot for rent
	   Then UnChecked only Rental listing type for rent
	   And Unchecked the Corporate Housing community for rent
	   Then Click on Update Button for rent	
	   
	 @rental3
	 Scenario: Submit the form only with Corporate Housing Listing type with property ALL
	   When Test Rental check box is checkedornot for rent
	   Then UnChecked only Rental listing type for rent
	   And Unchecked the Corporate Housing community for rent
	   Then Click on Update Button for rent