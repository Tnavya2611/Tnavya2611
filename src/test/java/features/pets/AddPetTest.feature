@newpet @regression
Feature: Add a new pet to the store

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def requestPayload =
    """
    {
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
    """

    Scenario: Add a new pet to the store
      Given path '/pet'
      And request requestPayload
      When method POST
      Then status 200
      And print 'Expected Response =' + response
      And assert responseTime < 4000
      And header content-type = 'application/json'
      And match response.status == 'available'
      And match $.name == 'doggie'





