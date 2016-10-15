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



When /^(?:|I ) am a user on the ([^"]*) who wants to ([^"]*)$/ do |page_name, action|
  pending("To be completed")
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  pending("To be completed")
end

When /^(?:|I )click on the "([^"]*)" button I should get a "([^"]*)"$/ do |button, token|
  pending("To be completed")
end

When /^(?:|I ) am returning a user on the ([^"]*) wantint to ([^"]*)$/ do |page_name, action|
  pending("To be completed")
end

Then /^(?:|I )should see "([^"]*)" entry box for "([^"]*)"$/ do |entry, action|
  pending("To be completed")
end

Then /^(?:|I )enter ([^"]*) into the "([^"]*)"$/ do |entry, box|
  pending("To be completed")
end

Then /^(?:|I )should see "([^"]*)" labled with "([^"]*)"$/ do |entry, action|
  pending("To be completed")
end

Then /^(?:|I )should see an option to submit "([^"]*)"$/ do |submission|
  pending("To be completed")
end

Then /^(?:|I )click "([^"]*)" should flash "([^"]*)"$/ do |submission, text|
  pending("To be completed")
end







