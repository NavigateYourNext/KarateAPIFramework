Feature: Check user details by API

Background:
      Given url 'https://reqres.in'
      Given header Content-Type = 'application/json'
      Given def expectedOutput1 = read('../jsondata/result2.json')
     

Scenario: Get list of single suer
	
	 #* def urll = 'Akshay'

     Given path '/api/users/2'
     When method get
     Then status 200
     And match response == expectedOutput1[0]
	 And print response
	 And match response.data.id == 2
	 Given call sleep 10

@ignore	 
@parallel=false	 
Scenario: Get list of users

     Given path '/api/users/3'
     When method get
     Then status 200
     And match response == expectedOutput1[1]
	 And print response
	 And match response.data.id == 3