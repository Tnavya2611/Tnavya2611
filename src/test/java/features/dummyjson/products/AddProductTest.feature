@addproduct
Feature: Adding product

  Background:
    * url 'https://dummyjson.com'
    * def requestPayload =
    """
    {
    "title": "BMW Pencil"    
    }
    """

  Scenario: Add a product
    Given path '/products/add'
    And request requestPayload
    When  method POST
    Then status 200
    And assert responseTime <5000
    And print 'Expected Response: ' + response
    And response.id == '#present'
    And match response.title == 'BMW Pencil'
