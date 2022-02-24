@singleproduct
Feature: Get single product details

Background:
* url 'https://dummyjson.com'
* def Id = 6

  Scenario: Verify single product details


    Given path '/products/'
    And path Id
    When method GET
    Then status 200
    And print 'Expected Response: ' + response
