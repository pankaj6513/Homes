@regression @search @filter @salefilter
Feature: Searching for For Sale listings
	As a User
	I want to search for listings in an area
	So I can find the perfect home

	Background: I am on a Home Page
		Given I am on the home page
		When I enter "<city>" in the search field
		Then I select For Sale
		And I click the search button
		Then I should see "Homes for Sale in Cook County, IL" for sale
		
	
	Scenario: Submit the form only with all Listing type with property ALL	
		When Test Resale check box is checkedornot
		Then Click on Update Button
		
	@property01
	Scenario: Submit the form only with RESALE Listing type with property ALL
	   When Test Resale check box is checkedornot
	   Then Checked only Resale listing type
	   And Unchecked New Home
	   And Unchecked Foreclosure
	   Then Click on Update Button
	   
	@property02	   
	Scenario: Submit the form only with NewHome Listing type with property ALL
	   When Test Resale check box is checkedornot
	   Then Checked only New Home listing type
	   And Unchecked the RESALE 
	   And Unchecked Foreclosure
	   Then Click on Update Button
	 
	@property03 
	Scenario: Submit the form only with Foreclosure Listing type with property ALL
	   When Test Resale check box is checkedornot
	   Then Checked only Foreclosure listing type
	   And Unchecked the RESALE 
	   And Unchecked New Home
	   Then Click on Update Button
	   
	@property04  
	Scenario: Submit the form with Resale and NewHome Listing type with property ALL
	   When Test Resale check box is checkedornot
	   Then Checked only Foreclosure listing type
	   And Unchecked Foreclosure
	   Then Click on Update Button
	  
	@property05
	Scenario: Submit the form with Resale and Foreclosure Listing type with property ALL
	   When Test Resale check box is checkedornot
	   Then Checked only Foreclosure listing type
	   And Unchecked New Home
	   Then Click on Update Button
	   
	@property06
	Scenario: Submit the form with NewHome and Foreclosure Listing type with property ALL
	   When Test Resale check box is checkedornot
	   Then Unchecked the RESALE
	   Then Click on Update Button 
	   
	
	@property07 
	Scenario: Submit the form with Residential property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  Then Click on Update Button on property type
	  
	@property08
	Scenario: Submit the form with Lots/Land property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the LotsLand property type
	  Then Click on Update Button on property type
	  
	@property09
	Scenario: Submit the form with MULTI-FAMILY property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the MULTI-FAMILY property type
	  Then Click on Update Button on property type

	    
	@property10
	Scenario: Submit the form with TOWNHOUSE property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the TOWNHOUSE property type
      Then Click on Update Button on property type	  
	  
	@property11
	Scenario: Submit the form with Condominium property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Condominium property type
	  Then Click on Update Button on property type
	  
	@property12
	Scenario: Submit the form with Condominium property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the MOBILEMANUFACTURED property type
	  Then Click on Update Button on property type
	  
  	@property13 	
	Scenario: Submit the form with "Residential & Lost/Land property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  And Checked the LotsLand property type
	  Then Click on Update Button on property type
	  
	@property14
	Scenario: Submit the form with Residential & Multi-Family property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  And Checked the MULTI-FAMILY property type
	  Then Click on Update Button on property type
	  
	@property15
	Scenario: Submit the form with Residential & Townhouse property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  And Checked the TOWNHOUSE property type
	  Then Click on Update Button on property type
	  
	@property16
	Scenario: Submit the form with Residential & Condominium property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  And Checked the Condominium property type
	  Then Click on Update Button on property type
	  
	 @property17
	Scenario: Submit the form with Residential & Mobile/Manufactured property type
	  When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  And Checked the MOBILEMANUFACTURED property type
	  Then Click on Update Button on property type

	@property18
	Scenario: Submit the form with Residential & Mobile/Manufactured property type
	  When User click on property type
	  Then Click on Update Button on property type
	  
	@property19
	Scenario: Submit the form only with RESALE Listing type with property Lotsland
	   When Test Resale check box is checkedornot
	   Then Checked only Resale listing type
	   And Unchecked New Home
	   And Unchecked Foreclosure
	   Then Click on Update Button
	   Then Wait for popup
	   When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  Then Click on Update Button on property type
	
	@property20
	Scenario: Submit the form only with RESALE Listing type with property Lotsland
	   When Test Resale check box is checkedornot
	   Then Checked only Resale listing type
	   And Unchecked New Home
	   And Unchecked Foreclosure
	   Then Click on Update Button
	   Then Wait for popup
	   When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  And Checked the LotsLand property type
	  Then Click on Update Button on property type
	  
	@property21
	Scenario: Submit the form only with New Home Listing type with property Lotsland
	   When Test Resale check box is checkedornot
	    Then Checked only New Home listing type
	   And Unchecked the RESALE 
	   And Unchecked Foreclosure
	   Then Click on Update Button
	   Then Wait for popup
	   When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  Then Click on Update Button on property type
	  
	@property22
	Scenario: Submit the form only with New Home Listing type with property Lotsland
	   When Test Resale check box is checkedornot
	    Then Checked only New Home listing type
	   And Unchecked the RESALE 
	   And Unchecked Foreclosure
	   Then Click on Update Button
	   Then Wait for popup
	   When User click on property type
	   Then Click on Update Button on property type
	
	@property23
	Scenario: Submit the form only with New Home Listing type with property Lotsland
	   When Test Resale check box is checkedornot
	    Then Checked only New Home listing type
	 Then Checked only Foreclosure listing type
	   And Unchecked the RESALE 
	   And Unchecked New Home
	   Then Click on Update Button
	   Then Wait for popup
	   When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  Then Click on Update Button on property type
	  
	@property24
	Scenario: Submit the form only with New Home Listing type with property Lotsland
	   When Test Resale check box is checkedornot
	    Then Checked only New Home listing type
	 Then Checked only Foreclosure listing type
	   And Unchecked the RESALE 
	   And Unchecked New Home
	   Then Click on Update Button
	   Then Wait for popup
	   When User click on property type
	  Then Unchecked the ALL property type
	  And Checked the Residential property type
	  And Checked the Condominium property type
	  Then Click on Update Button on property type
	
	
	
	
	
	
	 
	 
	