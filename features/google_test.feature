Feature: New demo

  Scenario: Google search test

    Given opened "http://www.google.com" page
    When I enter "Sky" to google search
    When I click "Google Search" button
    Then I should see "Sky TV" text