Feature: Login

  Background:
    Given I access the login page
    And the Login page is displayed
    And I login with id "user@phptravels.com" and password "demouser"

  Scenario: Successful login
    Then the Home page is displayed

  Scenario Outline: View menu links
    And the Home page is displayed
    When I choose the <link_text> link
    Then the <page_title> page is displayed
  Examples:
    | link_text | page_title  |
    |Hotels     |Hotels       |
    |Tours      |Tours        |
    #|Flights    |Flights      |
    #|Cars       |Cars         |
    #|Offers     |Offers       |
    #|Blog       |Blog         |