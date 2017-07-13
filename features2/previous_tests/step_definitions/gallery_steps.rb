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

Given /the following poems exist/ do |poem_table|
  poem_table.hashes.each do |poem|
    p = FactoryGirl.create(:poem, poem)
    p.save!
  end
end

Then /^I click the box "([^"]*)"$/ do |box_name|
    page.find(:xpath,"//*[text()='#{box_name}']").click
end