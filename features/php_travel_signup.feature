Feature: PHP Travel Signup

Background: 
Given I am on PHP travel page
And  I click on my account
And I click on Signup

Scenario: see Signup page
    Then I should see Signup page    
    When I register with valid credentials
    Then I should see message "Hi, Tom Riddle"



