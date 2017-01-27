Feature: Hotel details page

Background: 
Given I am on PHP travel page
And I click on Hotels link on navigation bar

Scenario: Check Hotels details
    When I enter "Pune" as Hotel location
    And  I click search button
    Then I should see hotels in Pune, which include "The O Hotel" 
    And  I click on Hotel details link
    And  I see a page  with text "The O Hotel"
