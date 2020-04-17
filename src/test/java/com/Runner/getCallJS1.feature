Feature: Check user details by API

Background:
      Given url 'https://reqres.in'
      Given header Content-Type = 'application/json'
	
Scenario: Get list of all countries
	
	 #* def urll = 'Akshay'

     Given path '/api/users'
     Given param page = 2
     When method get
     Then status 200
     Then def myData = response.data
     Then print myData
     
     And def myFunc =  
     """
     function(arg)
     {
     	return arg.length
     }
     
     """
     And def length = call myFunc myData
     Then print length