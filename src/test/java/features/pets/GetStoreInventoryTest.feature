@inventory @regression

  Feature: Get store inventory
    
    Background:
    * url 'https://petstore.swagger.io/v2/'
      
    Scenario: Get store inventory
      Given path '/store/inventory'
      And header content-type = 'application/json'
      When method GET
      Then status 200
      And print 'Expected Response=' + response
      And assert responseTime < 4000
      And match $.pending == '#present'
      And match $.pending == '#notnull'






      
      