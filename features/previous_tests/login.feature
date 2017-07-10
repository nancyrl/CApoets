 Feature: Administrators logging into the dashboard

   As an administrator
   I want to make an account
   I want to log in
   I want to log out

Scenario: I want to make an account
Given I am an admin on the "Admin" page
When I follow "Sign Up"
Then I should see "Sign up"
When I fill in "Email" with "Test@Test.com"
When I fill in "Password" with "Test22"
When I fill in "Password confirmation" with "Test22"
When I press "Sign up"
Then I should see "Welcome! You have signed up successfully."

Scenario: I am logging in with correct username/password
Given a valid user
Given I am an admin on the "Admin" page
When I follow "Log In"
Then I should see "Log in"
When I fill in "Email" with "Test@Test.com"
When I fill in "Password" with "12345678"
When I press "Log in"
Then I should see "Signed in successfully."

Scenario: I am logging in with incorrect username/password
Given I am an admin on the "Admin" page
When I follow "Log In"
And I fill in "Email" with "Wrong"
And I fill in "Password" with "Wrong2"
And I press "Log in"
Then I should not see "Signed in successfully"

Scenario: I am logging out
Given a valid user
Given a logged in user
Then I should see "Log Out"
When I follow "Log Out"
Then I should see "Signed out successfully."

Scenario: I am editing my username/password
Given a valid user
Given a logged in user
Given I want to edit my registration
Then I should see "Edit User"
Then I should see "Cancel my account"