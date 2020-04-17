Feature: Check user details by API

Background:
      Given url 'https://reqres.in'
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
	 
	 Given def myFun = function(){ return 'Hello JavaScript' }
	 And def resultOfFunction = call myFun
	 Then print resultOfFunction
	 
	 Given def myFun2 = 
	 """
	 function()
	 {
	 	return 'myFunction'
	 }
	 
	 """
	 And def resultofFunction2 = call myFun2
	 Then print resultofFunction2