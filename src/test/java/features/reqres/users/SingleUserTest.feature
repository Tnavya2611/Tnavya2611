@regression @navya @singleuser
Feature: Single User

   Scenario: Verify a single user - way 1
  Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200



