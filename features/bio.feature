Feature: Writers wants to make a about page for themselves

    As a writer
	So that I add information about myself as well as allow my viewers to view my work in one place like twitter or facebook
	I want a personal page 

    As a writer
    So that I can share more information about myself and share all my work in the same place
    I want to have a personal page for my information and poems

Scenario: I want to tell readers about myself
Given I am a writer on the "profile" page
Then I press the "update" button
Then I should see input boxes labeled with the following: "Name, About Me, Email, School, County"