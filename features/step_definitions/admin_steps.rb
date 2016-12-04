require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given(/^I am a admin on the "([^"]*)" page$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see input boxes labeled with the following: "([^"]*)"$/) do |list_of_boxes|
  box_list = list_of_boxes.split(", ")
  box_list.each do |box|
    if page.respond_to? :should
      page.should have_content(box)
    else
      assert page.has_content?(box)
    end
  end
end

Then(/^I should see a "([^"]*)" button$/) do |button_name|
  find_button(button_name)
end

When(/^I click on the "([^"]*)" button$/) do |button_name|
  click_button(button_name)
end

Then(/^it should flash "([^"]*)"$/) do |flashed_message|
  if page.respond_to? :should
    page.should have_content(flashed_message)
  else
    assert page.has_content?(flashed_message)
  end
end

Given(/^I can fill in input box "([^"]*)" with "([^"]*)"$/) do |box, input|
  fill_in(box, :with => input)
end


And (/^I attach my release form "([^"]*)"$/) do |form|
  pending
end

Given(/^I select "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  page.select(arg2, :from => arg1)
end

Given(/^I attach "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  page.attach_file(arg1, File.expand_path(arg2))
end
