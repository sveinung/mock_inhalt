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

Then /^I should see the the provided link "([^"]*)" inside "([^"]*)"$/ do |link, element|
  within_frame element do
    wait_until(10) do
      page.should have_link(link)
    end
  end
end

Then /^Inside "([^"]*)" I should see the following links:$/ do |element, links|
  # table is a Cucumber::Ast::Table
  within_frame element do
    wait_until(10) do
      links.hashes.each do |hash|
        page.should have_link(hash["link"])
      end
    end
  end
end
