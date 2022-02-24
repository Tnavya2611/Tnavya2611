
Feature: Update the User
  Background: 
  * url baseURL_ReqRes
    * def  requestPayload =
    """
    {
    "name": "Navya",
    "job": "QA Analyst"
    }
    """
* def userId = 2
  @updateuser
    Scenario: Update the User
      Given path '/api/users/'
      And path userId
      And header Content-Type = 'application/json'
      And request  requestPayload
      When method PUT
      Then status 200
      And print 'Expected Response is: ' + response
      And assert responseTime  <  3000
      And match response.name == '#present'

      Scenario: Update User using patch
        Given path '/api/users/2'
        And header Content-Type = 'application/json'
        And request requestPayload
        When method PATCH
        Then status 200
        And print 'Expected Response is: ' + response
        And assert responseTime  <  3000
        And match response.name == '#present'
        And match response.name == 'Navya'
        And match response.job == '#present'
        And match $.updatedAt == '#notnull'




      