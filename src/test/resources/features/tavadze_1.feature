@ask-funtional-feature-vt
Feature: Functional test for ASK

  Background: Open app
    Given I open url "http://ask-stage.portnov.com"

  @ask-login-vt
  Scenario: Successful login
    Then I type "student2@gmail.com" into element with xpath "//*[@ formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(),'STUDENT')]" to be present
    And element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(),'STUDENT')]" should be displayed
    And I wait for 2 sec


  @ask-login-invalid-email-vt
  Scenario: Login with wrong email
    Then I type "superasktest@mail.ru" into element with xpath "//*[@ formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//simple-snack-bar[contains(text(),'failed')]" to be present
    And element with xpath "//simple-snack-bar[contains(text(),'failed')]" should be displayed
    And I wait for 2 sec

  @ask-login-invalid-password-vt
  Scenario: Login with wrong password
    Then I type "student2@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "54321Abc" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//simple-snack-bar[contains(text(),'User not found')]" to be present
    And element with xpath "//simple-snack-bar[contains(text(),'User not found')]" should be present

  @ask-login-empty-email-vt
  Scenario: Login with empty email field
    Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//mat-error[contains(text(),'required')]" to be present
    And element with xpath "//mat-error[contains(text(),'required')]" should be present
    And I wait for 2 sec

  @ask-login-empty-password-vt
  Scenario: Login with empty password field
    Then I type "student2@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//mat-error[contains(text(),'required')]" to be present
    And element with xpath "//mat-error[contains(text(),'required')]" should be present
    And I wait for 2 sec

  @ask-login-leading-space-email-vt
  Scenario: Login with leading space in email field
    Then I type " student2@gmail.com" into element with xpath "//*[@ formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//mat-error[contains(text(),'Should be a valid')]" to be present
    And element with xpath "//mat-error[contains(text(),'Should be a valid')]" should be present
    And I wait for 2 sec

  @ask-login-trailing-space-email-vt
  Scenario: Login with trailing space in email field
    Then I type "student2@gmail.com " into element with xpath "//*[@ formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//mat-error[contains(text(),'Should be a valid')]" to be present
    And element with xpath "//mat-error[contains(text(),'Should be a valid')]" should be present
    And I wait for 2 sec

  @ask-login-leading-space-password-vt
  Scenario: Login with leading space in password field
    Then I type "student2@gmail.com" into element with xpath "//*[@ formcontrolname='email']"
    Then I type " 12345Abc" into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//mat-error[contains(text(),'Whitespaces')]" to be present
    And element with xpath "//mat-error[contains(text(),'Whitespaces')]" should be present
    And I wait for 2 sec

  @ask-login-trailing-space-password-vt
  Scenario: Login with trailing space in password field
    Then I type "student2@gmail.com" into element with xpath "//*[@ formcontrolname='email']"
    Then I type "12345Abc " into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//mat-error[contains(text(),'Whitespaces')]" to be present
    And element with xpath "//mat-error[contains(text(),'Whitespaces')]" should be present
    And I wait for 2 sec

  @ask-login-capital-characters-email-vt
  Scenario: Login with all capital characters in email field
    Then I type "STUDENT2@GMAIL.COM" into element with xpath "//*[@ formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    And element with xpath "//p[contains(text(),'STUDENT')]" should be present
    And I wait for 2 sec

  @ask-login-capital-characters-password-vt
  Scenario: Login with all capital characters in password field
    Then I type "student2@gmail.com" into element with xpath "//*[@ formcontrolname='email']"
    Then I type "12345ABC" into element with xpath "//*[@ formcontrolname='password']"
    Then I click on element with xpath "//*[@type='submit']"
    And I wait for element with xpath "//simple-snack-bar[contains(text(),'Authentication failed')]" to be present
    And element with xpath "//simple-snack-bar[contains(text(),'Authentication failed')]" should be present
    And I wait for 2 sec







