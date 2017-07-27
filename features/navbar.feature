Feature: Add a navigation bar to the website

	As a user
	I want to access the website easily through navigation bar

	Scenario: Redirecting to submit poem page works
		Given I am a user on the admin page
		When I click the submit a poem button
		Then I should be on the submit new poem page

	Scenario: Redirecting to login page works
		Given I am a user on the admin page
		When I click the login button
		Then I should be on the login page

	Scenario: Clicking on logo and redirecting to home page
		Given I am a user on the login page
		When I click the logo button
		Then I should be on the home page