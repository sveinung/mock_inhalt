Given /^I am on the "([^"]*)" page$/ do |page|
  visit page
end

Then /^I should see the "([^"]*)"$/ do |result|
  page.has_content? result
end
