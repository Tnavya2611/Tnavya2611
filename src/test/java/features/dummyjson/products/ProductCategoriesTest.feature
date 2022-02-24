@products
Feature: Get product details

  Scenario: verifying Product details

    Given  url 'https://dummyjson.com/products/categories'
    When  method GET
    Then status 200
    And print 'Expected Response: ' + response