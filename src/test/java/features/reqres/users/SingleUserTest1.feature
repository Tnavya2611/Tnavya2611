@regression @smoke @reqres @navya @elementpresent
Feature: Single User

  Background:
    * url 'https://reqres.in'
    * def userId = 5

  Scenario: Verify  a single user - way 2
    Given path '/api/users/2'
    When method GET
    Then status 200
    And print 'Expected Response: ' + response

  Scenario: Verify a single user - way 3
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200

  @responsetime
  Scenario: Check response time should less than 3 seconds
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And assert responseTime < 3000                    #Validation - assertion

  @elementpresent
  Scenario: Check if the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.last_name == '#present'

  Scenario: Check if the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.id == '#present'

  Scenario: Check if the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.avatar == '#present'

  Scenario: Check if the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.first_name == '#present'

  Scenario: Check if the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.email == '#present'

  Scenario: Check if the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.support.text == '#present'

  Scenario: Check if the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.support.url == '#present'


  Scenario: Check if all the fields are present
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.avatar == '#present'

  Scenario: Check if all the fields are present (#present)
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.last_name == '#present'
    And match response.data.id == '#present'
    And match response.data.avatar == '#present'
    And match response.support.url == '#present'
    And match response.data.first_name == '#present'
    And match response.data.email == '#present'
    And match response.support.text == '#present


  @negative
  Scenario: Check if lname field is not present (Negative sceneario)
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.lname == '#notpresent'
    And match response.data.firstname == '#notpresent'

  @notnull
  Scenario: Check if all the fields are not null (#notnull)
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
    And match response.data.last_name == '#notnull'
    And match response.data.first_name == '#notnull'
    And match response.data.id == '#notnull'
    And match response.data.avatar == '#notnull'
    And match response.data.email == '#notnull'
    And match response support.url == '#notnull'
    And  match reponse support.text == '#notnull'


  @dollarresponse
  Scenario: Check if all the fields are not null (#notnull) - using $ instead of response
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
    And print 'Expected Response: ' + $
    And match $.data.last_name == '#notnull'
    And match $.data.first_name == '#notnull'
    And match $.data.id == '#notnull'
    And match $.data.avatar == '#ignore'
    And match $.data.email == '#notnull'
    And match $.support.text == '#notnull'
    And match $.support.url == '#notnull'


  @ignore
  Scenario: Check if all the fields are not null (#notnull) - #ignore
    Given path '/api/users/'
    And path userId
    When method GET
    Then status 200
      And print 'Expected Response: ' + $
    And match $.data.last_name == '#notnull'
    And match $.data.first_name == '#notnull'
    And match $.data.id == '#notnull'
    And match $.data.avatar == '#ignore'
    And match $.data.email == '#notnull'
    And match $.support.text == '#notnull'
    And match $.support.url == '#notnull'
    And match response.support.url != '#null'
    And match response.support.url == '#present'
    And match response.support.url != "#notpresent"





