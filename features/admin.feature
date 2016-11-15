# Feature: submission form for poet-teachers

#   As an administrator
#   I want to log in
#   I review submitted poems
#   I want to approve and disapprove poems for publication
#   I want to skip poems I'm unsure about

# Scenario: I am logging in with correct username/password
# Given I am a user on the homepage
# Then I should see "Administrator login"
# And I fill in "Username" with "Test"
# And I fill in "Password" with "Test2"
# And I press "Login"
# Then I should be redirected to my dashboard
# Then I should see "Welcome"

# Scenario: I am logging in with incorrect username/password
# Given I am a user on the homepage
# Then I should see "Administrator login"
# And I fill in "Username" with "Wrong"
# And I fill in "Password" with "Wrong2"
# And I press "Login"
# Then I should see "Incorrect username and password"

# Scenario: I am viewing pending poems
# Given I am on my dashboard
# And I click "Pending Poems"
# And I click "Poem1"
# Then I should see "Approve"
# Then I should see "Disapprove"
# Then I should see "Next"

# Scenario: I am approving poems
# Given I am on my dashboard
# And I click "Pending Poems"
# And I click "Poem1"
# Then I click "Approve"
# Then I should see "Poem has been approved."

# Scenario: I am disapproving poems
# Given I am on my dashboard
# And I click "Pending Poems"
# And I click "Poem1"
# Then I click "Approve"
# Then I should see "Poem has been dispproved."

# Scenario: I am skipping a poem I'm unsure about
# Given I am on my dashboard
# And I click "Pending Poems"
# And I click "Poem1"
# Then I click "Next"
# Then I should see "Poem2"