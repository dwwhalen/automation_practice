Feature: Top Nav Links

  Background:
    #Given I login with id "user@phptravels.com" and password "demouser"
    Given the user opens a browser and navigates to the "Login" page
    And I choose the Home link
    And the Home page is displayed

  Scenario: View Hotels link
    When I choose the Hotels link
    Then the Hotels page is displayed

  Scenario: View Tours link
    And the Home page is displayed
    When I choose the Tours link
    Then the Tours page is displayed

  Scenario: View Flights link
    And the Home page is displayed
    When I choose the Flights link
    Then the Flights page is displayed

  Scenario: View Cars link
    And the Home page is displayed
    When I choose the Cars link
    Then the Cars page is displayed

  Scenario: View Offers link
    And the Home page is displayed
    When I choose the Offers link
    Then the Offers page is displayed

  Scenario: View Blog link
    And the Home page is displayed
    When I choose the Blog link
    Then the Blog page is displayed

