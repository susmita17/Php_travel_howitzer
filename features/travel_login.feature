Feature:  Login PHP travel page with invalid credential


Background: 
Given I am on PHP travel page
When I click on my account
And I click on Login

Scenario: see Login page
When I input wrong email 
And i input wrong passowrd
And i click on login button   
  Then I should see error message "Invalid Email or Password"
    