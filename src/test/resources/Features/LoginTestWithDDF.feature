Feature: Data Driven Testing in Cucumber

  @ddf
  Scenario Outline: Login with DDF
    Given The user is on the login page
    When The user enters "<Sheet Name>" and row number <Row Number>
    Then The welcome message contains excel "<Sheet Name>" and <Row Number for Name>
    Then The user verify that company name <Row Number For Company>

    Examples:
      | Sheet Name | Row Number | Row Number for Name | Row Number For Company |
      | Test Data  | 0          | 0                   | 0                      |
      | Test Data  | 9          | 9                   | 9                      |
      | Test Data  | 1          | 1                   | 1                      |
      | Test Data  | 3          | 3                   | 3                      |