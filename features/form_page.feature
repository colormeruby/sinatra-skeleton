Feature: Viewer submits their name for the name form
	In order to see your name
	As a user of the website
	I want to be able to submit my name for the name form
	
	Scenario: View form page
		Given I am on "/form"
		Then I should see "Give us your name"
		
	Scenario: Fill out the form
		Given I am on "/form"
		When I fill in "name" with "John Doe"
		And I click "Submit"
		Then I should see "My name is John Doe"