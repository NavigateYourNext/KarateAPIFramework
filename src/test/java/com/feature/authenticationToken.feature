Feature: Create Authentication Token

Background:

Given url 'https://reqres.in'

Scenario: Create authentication token

Given path '/api/register'
Given def params = 
#"""
#{
#    "email": "eve.holt@reqres.in",
#    "password": "pistol"
#}
#"""

"""
{
	'email':'#(email)'
	'password':'#(password)'
}
"""
And form fields params
When method POST
Then status 200
And def token = response.token
And print token