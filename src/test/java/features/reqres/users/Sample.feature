Feature: description about this feature file

  Background:
    * url 'http://request.com'
    * def variableName = 'value'
    * def requestPayload =
    """
    {
       "key" : "value"
    }
    """

  Scenario: description of scenario
    Given path
    And request
    And param key  = 'value'
    When method
    Then status 200
    And assert responseTime <4000
    And print 'this is customaized print'
    And print 'this is appending variable value ' + response
    And match response.field == 'value'


  Scenario: description of scenario
    Given
    When
    Then