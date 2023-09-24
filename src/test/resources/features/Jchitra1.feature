#@ask-Password-feature-JC
Feature: JC-Password tests for ASK081523

@ask-password(valid)-JC
Scenario: Password with 5-32 characters
   Given I open url "http://ask-stage.portnov.com"
   Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        #Then I wait for 5 sec
   Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
   Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
   Then I type "student22@gmail.com" into element with xpath "//*[@formcontrolname='email']"
   Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
   Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
   Then I type "12345Abc" into element with xpath "//*[@formcontrolname='confirmPassword']"
   Then I click on element with xpath "//*[contains(text(),'Register Me')]"
   Then I wait for 5 sec