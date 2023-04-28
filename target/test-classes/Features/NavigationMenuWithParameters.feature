Feature: Navigate Menu with parameters

  Background:
    Given The user is on the login page
    When  The user logs in using "eurotech@gmail.com" and "Test12345!" credentials
    Then  The welcome message contains "Teacher"

  Scenario: Navigates Developer Menu
    And   The user navigates to "Developers" Menu
    Then  The user should be able to see header as "Filter Profiles by Skill or by Location"


  Scenario: Navigates Posts Menu
    And   The user navigates to "All Posts" Menu
    Then  The user should be able to see header as "Posts"


  Scenario: Navigates My Account Menu
    And   The user navigates to "My Account" Menu
    Then  The user should be able to see header as "Dashboard"



#    Create a Scenario Outline covering the above 3 scenarios

  Scenario Outline: Navigates menu options
    And   The user navigates to "<MenuName>" Menu
    Then  The user should be able to see header as "<Headers>"
    Examples:
      | MenuName   | Headers                                 |
      | Developers | Filter Profiles by Skill or by Location |
      | All Posts  | Posts                                   |
      | My Account | Dashboard                               |


#    Homework:
#  Create a new feature named "negativeLoginTestScenarioOutline"
#  Use scenario outline to enter invalid username and/or password and validate the different error messages