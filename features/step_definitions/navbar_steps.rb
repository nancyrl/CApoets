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

When /^I click the (.+) link$/ do |title|
	case title
    when /^Home$/
      title = "Home"
    when /^Submit a Poem$/
      title = "Submit a Poem"
    when /^Log In$/
      title = "Log In / Sign up"
    end
    click_link(title)
end