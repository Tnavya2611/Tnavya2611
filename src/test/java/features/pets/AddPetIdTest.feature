@petId @regression
Feature: Add a new pet ID to the store

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def petId = 1
    * def requestPayload =
    """
    {

    }
    """

       Scenario: Add a new pet ID to the store
      Given path '/pet/'
      And path petId
      And header content-type = 'application/json'
      And request requestPayload
      When method POST
      Then status 415
      And print 'Expected Response =' + response
      And assert responseTime < 4000


