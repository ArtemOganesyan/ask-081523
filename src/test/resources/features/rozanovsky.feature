# This is Dmitry Rozanovsky - TC = ASK081523-454

@ask-functional-feature-dr
  Feature: Multiple Choice Question - Other is Functional for a Teacher

    @ask-other-option-is-present-for-teacher-dr
    Scenario: Other answer option is present for teacher
      Given I open url "http://ask-stage.portnov.com"
      Then I type "rozanovsky@icloud.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "12345" into element with xpath "//*[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" to be present
      And element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" should be displayed
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
      Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      And I wait for element with xpath "//input[@formcontrolname='name']" to be present
      And element with xpath "//input[@formcontrolname='name']" should be displayed
      Then I type "MCO12345" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for element with xpath "//*[contains(text(),'Q1')]" to be present
      And element with xpath "//*[contains(text(),'Q1')]" should be displayed
      Then I click on element with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Multiple-Choice')]"
      Then I type "MCO question test?" into element with xpath "//*[@formcontrolname='question']"
      Then I type "Wrong" into element with xpath "//*[@placeholder='Option 1*']"
      Then I type "Other" into element with xpath "//*[@placeholder='Option 2*']"
      Then I click on element with xpath "//*[@placeholder='Option 2*']"
      Then I click on element with xpath "//*[@id='mat-checkbox-3']"    
      Then I click on element with xpath "//*[contains(text(), 'text area option for this question?')]"
      Then I click on element with xpath "//*[contains(text(),'Save')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
      And I wait for 5 sec
      

