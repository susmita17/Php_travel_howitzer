Feature: Search Hotels based on city

Background: 
Given I goto PHP_Travel site
And I click on Hotels link on navigation bar

Scenario: Check Hotels in Pune
    When I enter "Pune" as Hotel location
    And  I click search button
    Then I should see hotels in Pune, which include "The O Hotel","Novotel Pune Nagar Road" 
