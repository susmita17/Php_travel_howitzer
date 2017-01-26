
Given(/^I click on Signup$/) do
  Base_Page.given.click_signup_link  
end

Then(/^I should see Signup page$/) do
	Php_signup_page.on do
	is_expected.to have_firstname_element
    is_expected.to have_lastname_element
    is_expected.to have_mobile_element
    is_expected.to have_email_element
    is_expected.to have_password_element
    is_expected.to have_confirm_password_element
    is_expected.to have_signup_button_element
end
end

When(/^I register with valid credentials$/) do
  Php_signup_page.given.login
end

Then(/^I should see message "([^"]*)"$/) do |message|
Php_signup_page.on do 
	expect(get_message).to eql message
	
end
end
