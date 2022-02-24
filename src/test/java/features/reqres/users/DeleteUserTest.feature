
@deleteuser
Feature: Delete a user

  Scenario: verify user is deleted

    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print 'Expected Response: ' + response
