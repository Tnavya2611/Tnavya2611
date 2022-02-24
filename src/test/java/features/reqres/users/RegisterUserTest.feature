@register
Feature: Register new user

  Background:
    * url 'https://reqres.in'
    * def requestPayload4 =
    """
      {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
}
    """

  Scenario: verify the registeration is sucessful
    Given path '/api/register'
    And request requestPayload4
    When method POST
    Then status 200
    And print 'Excepected Response:' + response
