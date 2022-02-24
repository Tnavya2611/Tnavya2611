@regression
Feature: List out all the users from ReqRes


  Scenario: Verify the list of users - 1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200


  Scenario: Verify the list of users -2
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200








