#language: en
@regressive
Feature: Positive Login 
Validate if the user can authenticate in 
the application with the credentials provided


@login
@positive_login
Scenario: Login
    Given open the website the user on the login page
    When fill login details 
    And click the button "Login"
    Then the user will be on the page Invoice List. 