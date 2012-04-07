Given /^I am on the "([^"]*)" page$/ do |url|
  visit url
end

When /^I click the "([^"]*)" button$/ do |value|
  click_button value
end

Then /^I should see "([^"]*)" inside "([^"]*)"$/ do |result, element|
  within_frame element do
    wait_until(10) do
      page.should have_content(result)
    end
  end
end

Then /^I should see the the provided link "([^"]*)" inside "([^"]*)"$/ do |arg1, arg2|
    pending # express the regexp above with the code you wish you had
end
