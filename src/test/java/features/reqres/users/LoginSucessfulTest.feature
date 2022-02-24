@Login

Feature: Verify user is logged in

  Background:
    * url 'https://reqres.in'
    * def requestPayload =
       """
       {
    "email": "eve.holt@reqres.in",
    "password": "cityslicka"
}
       """
    * def requestPayload1 =
    """

    {
    "email": "peter@klaven"
}

    """

  Scenario: Verify user is logged in
    Given path '/api/login'
    And request requestPayload
    When method POST
    Then status 200
    And print 'Expected Response =' + response

  Scenario: Verify user is not logged in
    Given path '/api/login'
    And request requestPayload1
    When method POST
    Then status 400
    And print 'Expected Response =' + response