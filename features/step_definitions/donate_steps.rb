require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))
Capybara.ignore_hidden_elements = false

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given /I can press the "(.*)" button/ do |button|
    if button == "donate"
        visit "http://www.californiapoets.org/for-donors"
    end
    # Kernel.puts URI.parse(current_url).path
    # visit path_to(button)
        # page.should have_css("img[src*= 'donate.png']")
    # find('.donate_img').click
    
    # click_link('', :id=> "Donate_image")
    # /assets/donate-bc796926f48918f55d81115de505fbf932aa9b17a13766a23dcbcb828ef9887e.png
end

Then /I should see the "(.*)" page/ do |page|
  expect(page).to have_content("Thank YOU!")
end

