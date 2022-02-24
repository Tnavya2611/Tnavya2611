@productcatergory
Feature: Product of a category

  Background:
    * url 'https://dummyjson.com'

  Scenario: Product of a category
  Given path '/products/category/laptops'
    When method GET
    Then status 200
    And print 'Expected Response: ' + response





