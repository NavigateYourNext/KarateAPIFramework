Feature: Data Driven Feature

Background:
  Given url 'https://restful-booker.herokuapp.com'
  Given header Content-Type = 'application/json'
 
 @ignore 
 Scenario Outline: Data Driven Scenario
 Given path '/auth'
 And request { "username" : <username>, "password" : <password>}
 When method POST
 Then status 200
 Then print response
 
 Examples:
 |username|password|
 |admin|password123|
 
