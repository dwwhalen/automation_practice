Feature: Login

  Background:
    Given I access the login page
    And the Login page is displayed
    And I login with id "user@phptravels.com" and password "demouser"

  Scenario: Successful login
    Then the Home page is displayed

  Scenario: View Hotels link
    And the Home page is displayed
    When I choose the Hotels link
    Then the Hotels page is displayed

  Scenario: View Tours link
    And the Home page is displayed
    When I choose the Tours link
    Then the Hotels page is displayed
