@search
Feature: Search a product

  Scenario: Search a product
    Given url 'https://dummyjson.com/products/search?q=phone'
    When  method GET
    Then status 200
    And print 'Expected Response: ' + response
