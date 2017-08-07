Feature: Add a navigation bar to the website

	As a user
	I want to access the website easily through navigation bar

Scenario: Redirecting to submit poem page works
Given I am on the admin home page
When I click the Submit a Poem link
Then I should be on new poem

Scenario: Redirecting to login page works
Given I am on the admin home page
When I click the Log In link
Then I should be on Admin

Scenario: Clicking on logo and redirecting to home page
Given I am on new poem
When I click the Home link
Then I should be on the admin home page