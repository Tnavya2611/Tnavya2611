@singlecart
Feature: Get single cart details

  Background:
    * url 'https://dummyjson.com'
    * def id = 2

    Scenario: Get single cart details
      Given path '/carts/'
      And path id
      When method GET
      Then status 200
      And print 'Expected Response: ' + response