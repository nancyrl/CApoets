#  Feature: submission form for poet-teachers

#    As an administrator
#    I want to make an account
#    I want to log in
#    I review submitted poems
#    I want to approve and disapprove poems for publication
#    I want to skip poems I'm unsure about

# Scenario: I want to make an account
# Given I am a admin on the "Sign up" page
# Then I should see "Sign up"
# And I fill in "Email" with "Test@Test.com"
# And I fill in "Password" with "Test22"
# And I fill in "Password confirmation" with "Test22"
# And I press "Sign up"
# Then I should see "Welcome! You have signed up successfully."

# Scenario: I am logging in with correct username/password
# Given I am a admin on the "Log in" page
# Then I should see "Log in"
# And I fill in "Email" with "Test@Test.com"
# And I fill in "Password" with "Test22"
# And I press "Log in"
# Then I should see "Signed in successfully."

# Scenario: I am logging in with incorrect username/password
# Given I am a admin on the "Log in" page
# Then I should see "Log in"
# And I fill in "Email" with "Wrong"
# And I fill in "Password" with "Wrong2"
# And I press "Log in"
# Then I should not see "Signed in successfully"

# # Scenario: I am viewing pending poems
# # Given I am on my dashboard
# # And I click "Pending Poems"
# # And I click "Poem1"
# # Then I should see "Approve"
# # Then I should see "Disapprove"
# # Then I should see "Next"

# # Scenario: I am approving poems
# # Given I am on my dashboard
# # And I click "Pending Poems"
# # And I click "Poem1"
# # Then I click "Approve"
# # Then I should see "Poem has been approved."

# # Scenario: I am disapproving poems
# # Given I am on my dashboard
# # And I click "Pending Poems"
# # And I click "Poem1"
# # Then I click "Approve"
# # Then I should see "Poem has been dispproved."

# # Scenario: I am skipping a poem I'm unsure about
# # Given I am on my dashboard
# # And I click "Pending Poems"
# # And I click "Poem1"
# # Then I click "Next"
# # Then I should see "Poem2"