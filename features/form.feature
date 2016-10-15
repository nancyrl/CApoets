Feature: submission form for poet-teachers

  As a poet teacher
  I want to be able to submit my poems to the anthology and poets of california site
  
Scenario: I am a user on the webpage who wants to save my progress thus far 
Then I should see a "Save and submit later" button
When I click on the "Save and submit later" button I should get a token

Scenario: I am a returning user on the webpage wanting to continue with my submission
Then I should see "Tokens" entry box for me to enter my tokens
And I enter my tokens into the "Tokens" box
Then I should see my previous submissions saved on the webpage

Scenario: I am a user I on the webpage looking at the site 
Then I should see input boxes labeled with text, title, name, and attachments
And I should see an option to submit the release form
And I click submit should flash "forms submitted"