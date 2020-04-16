Feature: Check user details by API

Background:
      Given url 'https://reqres.in'
      Given header Content-Type = 'application/json'
      Given def oldFeature = read('newUserDetails.feature')
      Then def result = call oldFeature 
       	
Scenario: Get list of all countries
	
	 #* def urll = 'Akshay'

     Given path '/api/users/4'
     When method GET
     Then status 200
	 Then print result