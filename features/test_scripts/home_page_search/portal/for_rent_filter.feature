@regression @search @rentfilter
Feature: Searching for For Sale listings
	As a User
	I want to search for listings in an area
	So I can find the perfect home

	Background: I am on a Home Page
		Given I am on the home page
		When I enter "<city>" in the search field
		And I select For Rent
		And I click the search button
		Then I should see "Cook County, IL Homes for Rent" for sale
	
	Scenario: Submit the form only with all Listing type with property ALL	
		When Test Rental check box is checkedornot for rent
		Then Click on Update Button
	
	Scenario: Submit the form only with Rental Listing type with property ALL
	   When Test Rental check box is checkedornot for rent
	   Then Unchecked rental listing type
	   Then Unchecked the Senior community 
	   Then Click on Update Button 
	
	
    Scenario: Submit the form only with Corporate Housing Listing type with property ALL
	   When Test Rental check box is checkedornot for rent
	   Then Unchecked rental listing type
	   Then Unchecked the Corporate Housing community 
	   Then Click on Update Button for rent
	   
	
    Scenario: Submit the form only with Corporate Housing Listing type with property ALL
	   When Test Rental check box is checkedornot for rent
	   Then Unchecked rental listing type
	   Then Unchecked the Senior community
	   Then Unchecked the Corporate Housing community 
	   Then Click on Update Button for rent
	   
	
	 Scenario: Submit the form only with Corporate Housing Listing type with property ALL
	  When Test Rental check box is checkedornot for rent
	  Then Unchecked rental listing type
	  Then Click on Update Button for rent
	   
	
	 Scenario: Submit the form only with ALL Property type 
	  When User click on property type for rent
	  Then Click on Update Button on property type for rent
	  
	@residential
	 Scenario: Submit the form only with ALL Property type 
	  When User click on property type for rent
	  When Checked the Residential property type for rent
	  Then Click on Update Button on property type for rent
	  
	@apartment
	 Scenario: Submit the form only with ALL Property type 
	  When User click on property type
	  When Checked the APARTMENT property type
	  Then Click on Update Button on property type for rent
	  
	  @rental7
	Scenario: Submit the form only with ALL Property type 
	  When User click on property type
	  When Checked the Condominium property type for rent
	  Then Click on Update Button on property type for rent
	  
	
	 Scenario: Submit the form only with ALL Property type 
	  When Test Rental check box is checkedornot for rent
	  Then Click on Update Button for rent
	  When User click on property type
	  Then Wait for popup
	  When User click on property type for rent
	  Then Unchecked the ALL property type for rent
	  Then Checked the APARTMENT property type
	  Then Click on Update Button on property type for rent
	  
	@rental11
	 Scenario: Submit the form only with ALL Property type 
	  When Test Rental check box is checkedornot for rent
	  Then Click on Update Button for rent
	  When User click on property type
	  Then Wait for popup
	  When User click on property type for rent
	  Then Unchecked the ALL property type for rent
	  Then Checked the Residential property type for rent
	  Then Click on Update Button on property type for rent
	  
	@rental10
	 Scenario: Submit the form only with ALL Property type 
	  When Test Rental check box is checkedornot for rent
	  Then Click on Update Button for rent
	  When User click on property type
	  Then Wait for popup
	  When User click on property type for rent
	  Then Unchecked the ALL property type for rent
	  Then Checked the Residential property type for rent
	  Then Checked the APARTMENT property type
	  Then Click on Update Button on property type for rent
	  
	  @rental8
	 Scenario: Submit the form only with ALL Property type 
	  When Test Rental check box is checkedornot for rent
	  Then Click on Update Button for rent
	  When User click on property type
	  Then Wait for popup
	  When User click on property type for rent
	  Then Unchecked the ALL property type for rent
	  Then Checked the Condominium property type for rent
	  Then Checked the APARTMENT property type
	  Then Click on Update Button on property type for rent
	  
	  @rental9
	 Scenario: Submit the form only with ALL Property type 
	  When Test Rental check box is checkedornot for rent
	  Then Click on Update Button for rent
	  When User click on property type
	  Then Wait for popup
	  When User click on property type for rent
	  Then Unchecked the ALL property type for rent
	  Then Checked the Residential property type for rent
	  Then Checked the Condominium property type for rent
	  Then Checked the APARTMENT property type
	  Then Click on Update Button on property type for rent