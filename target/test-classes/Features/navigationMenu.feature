@report
Feature: Navigation Menu

  @developersMenu
  Scenario: Navigating Developers Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user should be able to see welcome message
    And  The user navigates to Developers Menu
    Then The user able to see developer text


  Scenario: Navigates All Post Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user should be able to see welcome message
    And  The user navigates to All Post Menu
    Then The user able to see Post text


  Scenario: Navigates Dashboard Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user should be able to see welcome message
    And  The user navigates to Dashboard Menu
    Then The user able to see Dashboard text
