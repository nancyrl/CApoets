Then /I can see a button on the poem page labeled "(.*)"/ do |button|
    visit new_tag_path
end

Given /I am a user on the new poem page who wants to tag a poem called "(.*)"/ do |text|
    #login
    visit new_user_session_path
    fill_in "Email", :with => "Test@Test.com"
    fill_in "Password", :with => "12345678"
    click_button "Log in"
    
    #visit new_tag_path
    visit view_tags_path
    # @tag = FactoryGirl.create(:Tag, category: "temp", status: "pending", number_of_hits: "1")
end



