@deletecart
Feature: Delete a cart
  
  Scenario: Deleting a cart
    Given url 'https://dummyjson.com/carts/1'
    When method DELETE
    Then status 200
    And print 'Expected response =' +response
