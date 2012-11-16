Feature: Viewer visits the Home Page
	In order to read the page
	As a viewer
	I want to see the home page of my app
	
	Scenario: View home page
		Given I am on the home page
		Then I should see "Welcome to Foundation"
		
	Scenario: Find heading on home page
		Given I am on the home page
		Then I should see "Welcome to Foundation" in the selector "h2"
		
	Scenario: Find the link to Foundation Documentation
		Given I am on the home page
		Then I should see "Foundation Documentation" in a link
		
	Scenario: Find the Large Button
		Given I am on the home page
		Then I should see the "Large Button"