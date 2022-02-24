@pet @regression
Feature:  get store Order details

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def orderId = 2

    Scenario: get store Order details
      Given path '/store/order/'
      And path orderId
      When method GET
      Then status 200
      And assert responseTime < 4000
      And print 'Expected response =' + response
      And match response.quantity == '#present'
      And match response.status == 'placed'
      And match $.status == '#present'
      And match $.complete == false

      

