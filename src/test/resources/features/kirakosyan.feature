@predefined
Feature: Registration - Group Code - AKE
  @Scenario-AK-GroupCode

  Scenario: Registration - Group Code - Alphanumeric & Special characters
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "AName" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "ALastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "test@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "qwe1!" into element with xpath "//input[@formcontrolname='group']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='password']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 3 sec
    Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should contain text "You have been Registered"

  Scenario: Registration - Group Code - Field is required
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "AName" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "ALastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "test@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='password']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 3 sec
    Then element with xpath "//mat-error[contains(text(),'This field is required')]" should contain text "This field is required"

  Scenario: Registration - Group Code - Min 1 character
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "AName" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "ALastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "test1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "1" into element with xpath "//input[@formcontrolname='group']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='password']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 3 sec
    Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should contain text "You have been Registered"

  Scenario: Registration - Group Code - Max 6 character
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "AName" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "ALastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "test1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "asd1!w" into element with xpath "//input[@formcontrolname='group']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='password']"
    And I type "123Abc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 2 sec
    Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should contain text "You have been Registered"

  Scenario: Registration - Group Code - Max +1 character
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "AName" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "ALastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "test1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "1!asdfg" into element with xpath "//input[@formcontrolname='group']"
    And I click on element with xpath "//input[@formcontrolname='password']"
    Then element with xpath "//mat-error[contains(text(),'Too long')]" should contain text "Too long"

  Scenario: Registration - Group Code - White spaces are not allowed - Leading spaces
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "AName" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "ALastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "test1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "  !1as" into element with xpath "//input[@formcontrolname='group']"
    And I click on element with xpath "//input[@formcontrolname='password']"
    Then element with xpath "//mat-error[contains(text(), 'Whitespaces are not allowed')]" should contain text "Whitespaces are not allowed"

  Scenario: Registration - Group Code - White spaces are not allowed - Trailing spaces
    Given I open url "http://ask-stage.portnov.com/#/registration"
    And I type "AName" into element with xpath "//input[@formcontrolname='firstName']"
    And I type "ALastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "test1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "!1as  " into element with xpath "//input[@formcontrolname='group']"
    And I click on element with xpath "//input[@formcontrolname='password']"
    Then element with xpath "//mat-error[contains(text(), 'Whitespaces are not allowed')]" should contain text "Whitespaces are not allowed"



