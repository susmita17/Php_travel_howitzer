

Given(/^I am on PHP travel page$/) do
  Base_Page.open
end

When(/^I click on my account$/) do
  Base_Page.given.click_account_link
end

When(/^I click on Login$/) do
  Base_Page.given.click_login_link
end

When(/^I input wrong email$/) do
  Php_Login_Page.given.input_email
  	 
end

When(/^i input wrong passowrd$/) do
Php_Login_Page.given.input_password
end

When(/^i click on login button$/) do
 Php_Login_Page.given.click_login_btn
end

Then(/^I should see error message "([^"]*)"$/) do |error_message|
Php_Login_Page.on do 
	
	#{ expect(text).to include() }
		#check if text is matching to what you want
	expect(result_text).to eql error_message
	

end
end