Feature: Check returned countries by API

Background:
      Given url 'https://restcountries.eu'
      Given header Content-Type = 'application/json'
	
Scenario: Get list of all countries
     Given path '/rest/v2/all'
     When method get
     Then status 200
     Then print response
