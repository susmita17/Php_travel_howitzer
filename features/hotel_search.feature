Feature: Search Hotels based on city

Background: 
Given I am on PHP travel page
And I click on Hotels link on navigation bar

Scenario: Check Hotels in Pune
    When I enter Pune as Hotel location
    And  I click search button
    Then I should see hotels in Pune, which include "Novotel Pune Nagar Road","Hyatt Pune" 
