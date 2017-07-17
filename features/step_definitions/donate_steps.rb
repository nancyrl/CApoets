Given /I can press the "(.*)" button/ do |button|
    click_link('', :id=> "Donate_image")
end

Then /I should see the "(.*)" page/ do |page|
  expect(page).to have_content("Thank YOU!")
end

