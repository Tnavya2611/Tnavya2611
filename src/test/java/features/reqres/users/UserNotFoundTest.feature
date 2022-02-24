Feature: Single user not found based on user id

  Background:
    * def responseBody =
    """
    {}
    """

  @singleusernotfound
  Scenario: verify single user not found
    Given url 'https://reqres.in/api/users/23'
    When method GET
    Then status 404
    And print 'Expected Resposne is: ' + response
    And match response == responseBody

