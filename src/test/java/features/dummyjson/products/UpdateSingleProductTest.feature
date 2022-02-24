@updateproduct
Feature: Update product

  Background:
    * url 'https://dummyjson.com'
    * def requestPayload =
    """
    {
  "title": "iPhone 12"
}
    """
  Scenario: update a single  product
    Given path '/products/1'
    And request requestPayload
    When  method PATCH
    Then status 200
    And print 'Expected Response: ' + response
    And match response.id == '#present'
    And match response.title == 'iPhone 12'
    And match response.stock == 94
    And header Content-Type = 'application/json'
    And assert responseTime < 3000  



