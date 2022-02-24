
@unsucessful
Feature: Verify user registerstion is Unsucessful

  Background:
    * url 'https://reqres.in'
    * def requestPayload =
    """
    {
    "email": "sydney@fife"
}
    """

  Scenario: Verify user registerstion is Unsucessful
    Given path '/api/register'
    And request requestPayload
    When method POST
    Then status 400
    And print 'Expected Response = ' + response

    @UnsuccessfulRegistrationWithHeader
    Scenario: Verify the user registration is unsuccessful with header
      Given path '/api/register'
      And header Content-Type = 'application/json'
      And request requestPayload
      When method POST
      Then status 400
      And print 'Expected Response is: ' + response
      And assert responseTime < 3000
      And match response.error == '#present'
      And match response.error == '#notnull'
      And match response.errormessage == '#notpresent'
      And match $.error == 'Missing password'
