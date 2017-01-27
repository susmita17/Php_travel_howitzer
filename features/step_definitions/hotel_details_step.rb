# Hotel information

Then(/^I should see hotels in Pune, which include "([^"]*)"$/) do |arg1|
 # pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I click on Hotel details link$/) do
  Hotel_search_result_page.given.click_hotel_link
end

Then(/^I see a page  with text "([^"]*)"$/) do |hotelname|
  Hotel_Detail_Page.on do
  	expect(result_text).to eql hotelname
  end
end