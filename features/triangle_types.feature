#language: en

Feature: Returns triangle types
As a triangle lover
In order to discover different types of a triangle
I want to inform the size of the sides and discover the name of the triangle

@equilateral
Scenario: Calculate equilateral triangle type
Given I am in TrianguloApp
When I set the first side as 1
And set the second side as 1
And set the third side as 1
And calculate
Then the app inform me "O triângulo é Equilátero"

@isosceles
Scenario: Calculate isosceles triangle type
Given I am in TrianguloApp
When I set the first side as 3
And set the second side as 3
And set the third side as 2
And calculate
Then the app inform me "O triângulo é Isósceles"

@scalene
Scenario: Calculate scalene triangle type
Given I am in TrianguloApp
When I set the first side as 1
And set the second side as 2
And set the third side as 3
And calculate
Then the app inform me "O triângulo é Escaleno"