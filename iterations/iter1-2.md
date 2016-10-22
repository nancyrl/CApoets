Our user story changed from iter 1-1 as we checked in with the customer,
and got feedback on the type of submission form that they wanted to see. 
We decided not to implement tokens or authenticataion for this iteration, 
since authentication involved a lot more work and decision-making than we had anticipated. 

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

Scenario: I click submit without any text input
Given I am a user on the "" page who wants to "submit a poem"
Then I should see a "Submit another poem" button

Scenario: I click submit after filling in the inputs 
Given I am a user on the "" page who wants to "submit a poem"
And I can fill in input box "Name" with "Alexander Camelton"
And I can fill in input box "Email" with "Email@email.com"
And I can fill in input box "Student Name" with "Student Name"
And I can fill in input box "Title" with "Sample title"
And I can fill in input box "Poem Entry" with "Sample Poem"