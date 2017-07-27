Then /I should see a drop down menu with options : "(.*)"/ do |labels|
    pending
end

And /I can select "(.*)"/ do |label|
    pending
end

Given /There exists a poem with tags : "(.*)"/ do |labels|
    pending
end

Then(/^I should see a poem with tags: "(.*)"$/) do |labels|
    if labels != 0
    	put labels
    end
end

Given /I am a user on the "(.*)" page who wants to tag a poem/ do |page, labels|
	pending
end

Given /There exists a poem with tags: "(.*)"/ do |tags|
	pending
end
