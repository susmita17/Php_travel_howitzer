Given(/^I goto PHP_Travel site$/) do
  Base_Page.open
end

Given(/^I click on Hotels link on navigation bar$/) do
  Base_Page.on  do 
  click_hotels_link
  end
  end

When(/^I enter "([^"]*)" as Hotel location$/) do |arg1|
 #Hotel_search_page.given.location('Pune')
 Hotel_search_page.given.location(arg1)
end

When(/^I click search button$/) do
 Hotel_search_page.given.click_search_button
end

Then(/^I should see hotels in Pune, which include "([^"]*)","([^"]*)"$/) do |arg1, arg2|
 
  Hotel_search_result_page.on do
  
expect(result_text).to include(arg1,arg2)
end

end