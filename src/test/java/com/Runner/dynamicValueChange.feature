Feature: Get dynamic id details

Background:

Given url 'http://dummy.restapiexample.com'
Given def expectedData = read("result4.json")

Scenario: Get dynamic id
Given path '/api/v1/create'
And request {"name" : "test","salary" : "123","age" : "23"}
When method POST
Then status 200
#And match expectedData == response
And match response contains {"status" : "success"}
And match response.data.name contains "test"
And match response.data.age == "23"
