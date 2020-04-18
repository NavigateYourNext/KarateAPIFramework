Feature: Check user details by API

Background:
      Given url url
      Given header Content-Type = 'application/json'
	
Scenario: Get list of all countries
	
	 #* def urll = 'Akshay'

     Given path '/api/users/2'
     When method get
     Then status 200
     And def expectedOutput = read('result.json')
     And match response == expectedOutput
	 And print response
	 
	 
	 And match response.data.id == 2 
	 
	 Then print abc