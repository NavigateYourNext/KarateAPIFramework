Feature: Data Driven Feature through CSV

Background:
  Given url 'https://restful-booker.herokuapp.com'
  Given header Content-Type = 'application/json'
 
 Scenario Outline: Data Driven Scenarios through CSV
 Given path '/auth'
 And request { "username" : <username>, "password" : <password>}
 When method POST
 Then status 200
 Then print response
 
 Examples:
|read('inputData.csv')|