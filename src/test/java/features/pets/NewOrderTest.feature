@neworder @regression
Feature: Place a new order for a pet

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def requestPayload =
"""
    {
  "id": 0,
  "petId": 0,
  "quantity": 0,
  "shipDate": "2022-02-24T03:07:11.187Z",
  "status": "placed",
  "complete": true
}
"""
    Scenario: Place a new order for a pet
      Given path '/store/order'
      And request requestPayload
      When method POST
      Then status 200
      And print 'Expected Response =' + response
