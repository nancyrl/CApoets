Feature: submission form for poet-teachers

  As a poet teacher
  I want to be able to submit my poems to the anthology and poets of california site
  
Scenario: I am a user on the webpage who wants to submit my poem 
Given I am a user on the "" page who wants to "submit a poem"
Then I should see input boxes labeled with the following: "Name, Email, Student Name, Title, Poem"
Then I should see input boxes labeled with the following: "Poem"

Scenario: I click submit without any text input
Given I am a user on the "" page who wants to "submit a poem"
Then I should see a "Submit the poem" button
When I click on the "Submit the poem" button
Then it should flash "No Content submitted. Please fill in boxes."

Scenario: I click submit without any text input
Given I am a user on the "" page who wants to "submit a poem"
Then I should see a "Submit another poem" button
When I click on the "Submit another poem" button
Then it should flash "Redirecting to blank form."

Scenario: I click submit after filling in the inputs 
Given I am a user on the "" page who wants to "submit a poem"
And I fill in input box "Name" with "Alexander Camelton"
And I fill in input box "Email" with "Email@email.com"
And I fill in input box "Student Name" with "Student Name"
And I fill in input box "Title" with "Sample title"
And I fill in input box "Poem" with "Sample Poem"
When I click on the "Submit" button
Then it should flash "Content submitted."
