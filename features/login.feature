Feature: Login

  Background:
    Given I access the login page
    And the Login page is displayed
    And I login with id "user@phptravels.com" and password "demouser"

  Scenario: Successful login
    Then the Home page is displayed

  Scenario: Logoff
    And the Home page is displayed
    When I choose the Logoff link
    Then the Login page is displayed