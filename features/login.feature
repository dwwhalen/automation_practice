Feature: Login

  Scenario: Successful login
    Given I access the login page
    When I login with id "user@phptravels.com" and password "demouser"
    Then the home page is displayed

  Scenario Outline: View menu links
    Given I access the login page
    And I login with id "user@phptravels.com" and password "demouser"
    When I choose the "<link_text>" link
    Then the "<page_title>" page is displayed
  Examples:
    | link_text | page_title  |
    |Hotels     |Hotels       |
    |Tours      |Tours        |
    |Flights    |Flights      |
