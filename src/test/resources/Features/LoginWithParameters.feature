@smoke
Feature: Login as different users


  Scenario: Login as student with parameters
    Given The user is on the login page
    When The user logs in using "eurotech@gmail.com" and "Test12345!" credentials
    Then The user should be able to login
    Then The welcome message contains "Teacher"

  Scenario: Login as student with parameters
    Given The user is on the login page
    When The user logs in using "seyit@gmail.com" and "Seyit!" credentials
    Then The user should be able to login
    Then The welcome message contains "Seyit"

  Scenario: Login as student with parameters
    Given The user is on the login page
    When The user logs in using "gulcan@gmail.com" and "newjob2023" credentials
    Then The user should be able to login
    Then The welcome message contains "Gülcan"

  Scenario: Login as student with parameters
    Given The user is on the login page
    When The user logs in using "nhntsc@gmail.com " and "N12345!" credentials
    Then The user should be able to login
    Then The welcome message contains "Nihan"