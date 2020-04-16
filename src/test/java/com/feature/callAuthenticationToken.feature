Feature: Use Created Authentication Token

Background:

Given def callFeature = call read('callAuthenticationToken.feature') {"email": "eve.holt@reqres.in","password": "pistol"}
And def authToken = callFeature.token

Scenario: Use authentication token

Given url 'https://reqres.in/api/register'
And header Authorization = authToken
When method GET
Then status 204
