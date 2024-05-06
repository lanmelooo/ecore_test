#language: en
@regressive
Feature: Validate invoice details
Validate the invoice information is presented

@validate_invoice
Scenario: Invoice Details
    Given open the website the user on the login page
    And fill login details 
    And click the button "Login"
    When click on the link for Invoice Details
    Then validating the informations