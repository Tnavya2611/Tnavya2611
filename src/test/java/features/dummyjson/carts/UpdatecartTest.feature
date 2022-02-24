@updatecart
Feature: Update a cart

  Background:
    * url  'https://dummyjson.com'
    * def  requestPayload =
    """
    {
    "userId": 1,
    "products": [
      {
        "id": 1,
        "quantity": 1
      },
      {
        "id": 50,
        "quantity": 2
      }
    ]
  }
    """

    Scenario: Verifying update a cart
      Given path '/carts/1'
      And request requestPayload
      And header Content-Type = 'application/json; charset=utf-8'
      When method PUT
      Then status 200
      And assert responseTime < 4000
      And print 'Expected Response: ' + $
      And match response.title == '#present'
      And match response.title == 'iPhone X'
      And match response.quantity == '#present'

      



