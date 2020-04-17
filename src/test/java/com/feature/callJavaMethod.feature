Feature: Call Java Methods


Scenario: Call Java Methods

Given def javaDemo = Java.type('com.feature.JavaFunctions')
Given def result = new javaDemo().nonStaticFunctions(3);
Then print result
And match result == 3
And def result1 = javaDemo.staticFunctions();

