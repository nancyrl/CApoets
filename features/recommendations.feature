Feature: Readers can see a list of recommended poems.

    As a reader
    So that I can explore related poems of the same tag/category`	
	I want to have a "explore" functionality

  
Scenario: I want to view related poems
Given I am a reader on the "detailed" page who wants to "explore"
Then I press the "explore" button
Then I should see a "gallery" page
And Each poem in the "gallery" page should have tags similar to the "detailed" page.

Scenario: I want to view all poems with a specific tag
Given I am a reader on the "detailed" page who wants to see poems with a specific "tag"
Then I press the "tag" button
Then I should see a "gallery" page
And Each poem in the "gallery" page should have tags similar to the "detailed" page.