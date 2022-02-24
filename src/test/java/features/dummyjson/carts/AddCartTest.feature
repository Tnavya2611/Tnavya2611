
@addnewcart
Feature: Add a new cart

  Background:
    * url 'https://dummyjson.com'
    * def requestPayload =
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
    Scenario: Add a new cart
      Given path '/carts'
      And path '/add'
      And request requestPayload
      When method POST
      Then status 200
      And header Content-Type = 'application/json'
      And assert responseTime < 4000
      And print 'Expected Response: ' + response
      #arrays start from 0
      And match response.products[0].title == '#notnull'
      And match response.products[0].price == '#present'
      And match response.products[0].title == 'iPhone 9'

      