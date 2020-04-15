Feature: Check returned countries by API

Background:
      Given url 'https://gorest.co.in'
      Given header Authorization = 'Bearer _FWTkt73f0EeVrfWj7d3sKoLMnw_9dqVcs0k'
	
Scenario: Get list of all countries
     Given path '/public-api/users'
     And param first_name = 'john'
     And param status = 'inactive'
     When method get
     Then status 200
	
	 And def userResponse = response
	 And match userResponse.result[*].first_name contains ["Johnson"]