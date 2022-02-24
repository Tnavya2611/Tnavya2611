@delorder @regression
Feature: Delete order by ID

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def orderID = 2

    Scenario: Delete order by ID
      Given path '/store/order/'
      And path orderID
      When method DELETE
      Then status 200
      And print 'Expected Response =' + response