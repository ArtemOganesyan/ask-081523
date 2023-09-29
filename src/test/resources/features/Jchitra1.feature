
   @ask-Password-feature-JC
   Feature: JC-Password tests for ASK081523
   Background: Open app
      Given I open url "http://ask-stage.portnov.com"

   @ask-password(valid)-JC
   Scenario: Password with 5-32 characters
   #Given I open url "http://ask-stage.portnov.com"
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
      Then element with xpath "//h4[contains(text(),'You have been Registered')]" should contain text "You have been Registered"

   @ask-password(valid)-JC
   Scenario: Password with minimum 5 characters
   # Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        #Then I wait for 5 sec
      Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
      Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
      Then I type "student22@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
      Then I type "1234A" into element with xpath "//*[@formcontrolname='password']"
      Then I type "1234A" into element with xpath "//*[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'Register Me')]"
      Then I wait for 5 sec
      Then element with xpath "//h4[contains(text(),'You have been Registered')]" should contain text "You have been Registered"

   @ask-password(valid)-JC
   Scenario: Password with maximum 32 characters
   # Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
        #Then I wait for 5 sec
      Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
      Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
      Then I type "student22@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
      Then I type "123456789abcdefghjkiewrsaklwndq#" into element with xpath "//*[@formcontrolname='password']"
      Then I type "123456789abcdefghjkiewrsaklwndq#" into element with xpath "//*[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'Register Me')]"
      Then I wait for 5 sec
      Then element with xpath "//h4[contains(text(),'You have been Registered')]" should contain text "You have been Registered"


   @ask-password(invalid)-JC
   Scenario: Missmatch between Password and confirmpassword
       # Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
          #Then I wait for 5 sec
      Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
      Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
      Then I type "student22@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
      Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
      Then I type "12345A" into element with xpath "//*[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'Register Me')]"
      And I wait for element with xpath "//mat-error[contains(text(),'Entered passwords should match')]" to be present
      And element with xpath "//mat-error[contains(text(),'Entered passwords should match')]" should be displayed
      Then I wait for 5 sec


   @ask-password(invalid)-JC
   Scenario: Password and confirmpassword with < 5 characters
       # Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
          #Then I wait for 5 sec
      Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
      Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
      Then I type "student22@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
      Then I type "123" into element with xpath "//*[@formcontrolname='password']"
      Then I type "123" into element with xpath "//*[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'Register Me')]"
      And I wait for element with xpath "//mat-error[contains(text(),'Too short. Should be at least 5 to 32 characters')]" to be present
      And element with xpath "//mat-error[contains(text(),'Too short. Should be at least 5 to 32 characters')]" should be displayed
      Then I wait for 5 sec

   @ask-password(invalid)-JC
   Scenario: Password and confirmpassword with > 32 characters
       # Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
          #Then I wait for 5 sec
      Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
      Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
      Then I type "student22@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
      Then I type "12345abcndhfjrkieslmehjkioldhweush" into element with xpath "//*[@formcontrolname='password']"
      Then I type "12345abcndhfjrkieslmehjkioldhweush" into element with xpath "//*[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'Register Me')]"
      And I wait for element with xpath "//mat-error[contains(text(),'Too long. Should be at least 5 to 32 characters')]" to be present
      And element with xpath "//mat-error[contains(text(),'Too long. Should be at least 5 to 32 characters')]" should be displayed
      Then I wait for 5 sec

   @ask-password(invalid)-JC
   Scenario: Password and confirmpassword (empty field)
       #Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
          #Then I wait for 5 sec
      Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
      Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
      Then I type "student2@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
      Then I type "" into element with xpath "//*[@formcontrolname='password']"
      Then I type "" into element with xpath "//*[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'Register Me')]"
      And I wait for element with xpath "//mat-error[contains(text(),'This field is required')]" to be present
      And element with xpath "//mat-error[contains(text(),'This field is required')]" should be displayed
      Then I wait for 5 sec

   @ask-password(invalid)-JC
   Scenario: Password and confirmpassword (with whitespaces)
      Given I open url "http://ask-stage.portnov.com"
      Then I click on element with xpath "//span[contains(text(),'Register Now')]"
          #Then I wait for 5 sec
      Then I type "student" into element with xpath "//*[@formcontrolname='firstName']"
      Then I type "Two" into element with xpath "//*[@formcontrolname='lastName']"
      Then I type "student2@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "ABC" into element with xpath "//*[@formcontrolname='group']"
      Then I type "12345 Abc" into element with xpath "//*[@formcontrolname='password']"
      Then I type "12345 Abc" into element with xpath "//*[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//*[contains(text(),'Register Me')]"
      And I wait for element with xpath "//mat-error[contains(text(),'Whitespaces are not allowed')]" to be present
      And element with xpath "//mat-error[contains(text(),'Whitespaces are not allowed')]" should be displayed
      Then I wait for 5 sec







