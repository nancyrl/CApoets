Feature: Writers tag subject matter

    As a writer
    So that I can categorize my poems to (help) view related poems
    I wanted to add a tagging feature
  
Scenario: I wrote a new poem and I want to tag it
Given I am a user on the "new poem" page who wants to "tag a poem"
Then I should see input boxes labeled with the following: "Poet Teacher Name, Email, Student Name, Grade, Poem Title, School, County, Attach Poem/Images, Release Form"
Then I should see input boxes labeled with the following: "Poem"
Then I should see a drop down menu with options: "love, friendship, animals"
And I can select "love"

Scenario: I want to tag an old poem
Given I am a user on the "gallery" page who wants to "tag my own poem"
Then I should see a drop down menu with options: "love, friendship, animals"
And I can select "animals"

Scenario: I want to give a poem multiple tags
Given I am a user on the "new poem" page who wants to "tag a poem"
Then I should see input boxes labeled with the following: "Poet Teacher Name, Email, Student Name, Grade, Poem Title, School, County, Attach Poem/Images, Release Form"
Then I should see input boxes labeled with the following: "Poem"
Then I should see a drop down menu with options: "love, friendship, animals"
And I can select "love"
And I can select "friendship"
And I can select "animals"

Scenario: I want to tag a poem that has already been tagged
Given I am a user on the "gallery" page who wants to "tag my own poem"
Given There exists a poem with tags: "Berkeley, Oski"
Then I should see a poem with tags: "Berkeley, Oski"
Then I should see a drop down menu with options: "love, friendship, animals"
And I can select "love"
And I can select "friendship"
And I can select "animals"
