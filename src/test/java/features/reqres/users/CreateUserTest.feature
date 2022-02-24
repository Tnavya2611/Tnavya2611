@regression
Feature: Create new users

  Background:
    * url 'https://reqres.in'
    * def requestPayload1 =
    """
    {
  "name": "Navya",
  "job": "leader"
   }
    """

    * def requestPayload2 =
    """
    {
  "name": "learneasyautomation",
  "job": "tester"
   }
    """
    * def requestPayload3 =
    """
{
  "name": "gita",
  "job": "tester"
   }
    """

* def requestPayloadRadFromJson = read('data/CreateUser.json')


  Scenario: Verify that new users are getting create with POST call - navya s a user - defining request paylaod in background as a variable
    Given path '/api/users'
    And request requestPayload1
    When method POST
    Then status 201
    And print 'Expected Response: ' + response

  Scenario: Verify that new users are getting create with POST call - navya s a user - defining request payload in script
    Given path '/api/users'
    And request {"name":"gita","job":"tester"}
    When method POST
    Then status 201
    And print 'Expected Response: ' + response

    @readfromjson
  Scenario: Verify that new users are getting create with POST call - navya s a user - reading from json file
    Given path '/api/users'
    And request requestPayloadRadFromJson
    When method POST
    Then status 201
    And print 'Expected Response: ' + response


  Scenario: Verify that new users are getting create with POST call - learneasyautomation
    Given path '/api/users'
    And request requestPayload2
    When method POST
    Then status 201
    And print 'Expected Response: ' + response

  Scenario: Verify that new users are getting create with POST call - gita s a user
    Given path '/api/users'
    And request requestPayload3
    When method POST
    Then status 201
    And print 'Expected Response: ' + response

