@cartdetails
Feature: Get all cart details

  Background:
    * url 'https://dummyjson.com'
    * def id = 1
  Scenario: verify cart details
    Given path '/carts'
    And path id
    When method GET
    Then status 200
    And assert responseTime < 5000
    And print 'Expected Response = ' + response
    And match response.id == '#present'
    And response.products == '#present'
    And response.products[0].title  == '#present'
    And response.products[1].price  == '#present'
#    And match response.products[*].title contains 'a'
#    And match response.[*].title contains 'a'
    And match response.products[1].title == 'TC Reusable Silicone Magic Washing Gloves'
