#language: en
@regressive
Feature: Negative Login 
Validate that the application denies 
the user login with invalid credentials

@login
@negative_login
Scenario Outline: Login
    Given open the website the user on the login page
    When fill login <username>
    And click the button "Login"
    Then the user will be on see the message "Wrong username or password"

    Examples:
        |  username        |
        | "invalid_user1"  |
        | "invalid_user2"  |
        | "invalid_user3"  |
        | "default"        |