Feature: Dashboard menu page

  Scenario: User should be able to see Dashboard Menu after login
    Given The user is on the login page
    When  The user logs in using "eurotech@gmail.com" and "Test12345!" credentials
    Then  The welcome message contains "Teacher"
    Then The user should be able to see following menu
      | Developers |
      | All Posts  |
      | My Account |
#    |Contact Us|


  Scenario: User should be able to see Dashboard Menu after login
    Given The user is on the login page
#    When  The user logs in using "eurotech@gmail.com" and "Test12345!" credentials
    When The user logs in using following credentials
      | username | eurotech@gmail.com |
      | password | Test12345!         |
      | message  | Teacher            |
#    Then  The welcome message contains "Teacher"
    Then The user should be able to see following menu
      | Developers |
      | All Posts  |
      | My Account |
