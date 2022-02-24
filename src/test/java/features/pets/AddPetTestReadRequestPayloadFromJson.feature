@newpet @regression
Feature: Add a new pet to the store

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def requestPayload = read('data/AddPetTestReadRequestPayloadFromJson.json')
    * def requestPayload1 = read('AddPetTestReadRequestPayloadFromJson1.json')
    * def requestPayload2 = read('data/addpet/AddPetTestReadRequestPayloadFromJson2.json')



    Scenario: Add a new pet to the store
      Given path '/pet'
      And header Content-Type = 'application/json'
      And request requestPayload
      When method POST
      Then status 200
      And print 'Expected Response =' + response
      And assert responseTime < 4000
      And match response.status == 'available'
      And match $.name == 'doggie'


  Scenario: Add a new pet to the store
    Given path '/pet'
    And header Content-Type = 'application/json'
    And request requestPayload1
    When method POST
    Then status 200
    And print 'Expected Response =' + response
    And assert responseTime < 4000
    And match response.status == 'available'
    And match $.name == 'doggie'

  Scenario: Add a new pet to the store
    Given path '/pet'
    And header Content-Type = 'application/json'
    And request requestPayload2
    When method POST
    Then status 200
    And print 'Expected Response =' + response
    And assert responseTime < 4000
    And match response.status == 'available'
    And match $.name == 'doggie'




