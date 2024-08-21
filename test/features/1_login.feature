@login @saucedemo-test
Feature: Login

  Background:
    Given User open url "https://www.saucedemo.com/"

  @login-1
  Scenario: Open Sauce Labs & Verify Element
    When User finds the element "login/userNameField" displayed
    And User finds the element "login/passwordField" displayed
    And User finds the element "login/swaglabsLogo" displayed
    And User finds the element "login/loginCredentials" displayed
    And User finds the element "login/passwordCredentials" displayed
    Then User finds the element "login/loginBtn" displayed

  @login-2
  Scenario: Login Sauce Labs
    When User fills element "login/userNameField" with value "standard_user"
    And User fills element "login/passwordField" with value "secret_sauce"
    And User click element "login/loginBtn"
    Then User finds the element "login/sauceLabsBackpack" displayed

  @login-3
  Scenario: Logout Sauce Labs
    When User fills element "login/userNameField" with value "standard_user"
    And User fills element "login/passwordField" with value "secret_sauce"
    And User click element "login/loginBtn"
    And User finds the element "login/sauceLabsBackpack" displayed
    And User click element "inventory/sidebarBtn"
    And User wait for 5000
    Then User click element "inventory/logoutBtn"
    And User wait for 5000
    And User finds the element "login/userNameField" displayed
    And User finds the element "login/passwordField" displayed
    And User finds the element "login/swaglabsLogo" displayed
    And User finds the element "login/loginCredentials" displayed
    And User finds the element "login/passwordCredentials" displayed

  @login-4
  Scenario: Error Message in Login
    When User fills element "login/userNameField" with value ""
    And User fills element "login/passwordField" with value ""
    And User click element "login/loginBtn"
    Then User finds the element "login/errorMessageLogin" displayed
