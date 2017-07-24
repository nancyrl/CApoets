Feature: Email notification to the main admin when a poem is submitted
  
  As the main admin
  I want to receive an email notification when a poet teacher submits a new poem

Scenario: Admin is sent an email when a poem is submitted
Given a clear email queue
When poet teacher "Alexander Camelton" submits a poem
Then  "tina@cpits.org" should receive an email

Scenario: Admin receives an email with correct contents
When poet teacher "Alexander Camelton" submits a poem
And "tina@cpits.org" opens the email
Then they should see the email delivered from "notifications@example.com"
And they should see "A New Poem Has Been Submitted" in the email subject
And they should see "Alexander Camelton has submitted a new poem." in the email body
