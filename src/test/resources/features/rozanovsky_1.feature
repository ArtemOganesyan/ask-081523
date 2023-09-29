# This is Dmitry Rozanovsky - TC = ASK081523-454

@ask-functional-feature-dr
  Feature: Multiple Choice Question - Other answer is Functional

    @ask-other-option-is-present-for-teacher-dr
    Scenario: Other answer is present and savable for a teacher
      Given I open url "http://ask-stage.portnov.com"
      Then I type "rozanovsky@icloud.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "12345" into element with xpath "//*[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      #And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" to be present
      #And element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" should be displayed
      And I wait for 3 sec
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
      Then I type "Wrong" into element with xpath "(//*[contains(text(),'Q1')]/../../..//textarea)[2]"
      Then I type "Other" into element with xpath "(//*[contains(text(),'Q1')]/../../..//textarea)[3]"
      Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//textarea)[3]"
      Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//mat-checkbox)[2]"
      Then I click on element with xpath "//*[contains(text(), 'text area option for this question?')]"
      Then I click on element with xpath "//*[contains(text(),'Save')]"
      And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      And element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
      And I wait for 5 sec

      @ask-other-option-is-present-for-student-dr
      Scenario: Other answer is present and submitted for a student
        Given I open url "http://ask-stage.portnov.com"
        Then I type "rozanovsky@icloud.com" into element with xpath "//*[@formcontrolname='email']"
        Then I type "12345" into element with xpath "//*[@formcontrolname='password']"
        Then I click on element with xpath "//button[@type='submit']"
        And I wait for 3 sec
        #And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" to be present
        Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
        #And I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be present
        #And I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be present
        And I wait for 3 sec
        Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
        And I wait for element with xpath "//h4[contains(text(),'Give Assignment')]" to be present
        Then I click on element with xpath "//*[@formcontrolname='quizId']"
        And I wait for 3 sec
        Then I click on element with xpath "//span[contains(text(),'MCO12345')]"
        Then I click on element with xpath "//mat-list-option//div[text()[contains(., 'Student Four')]]"
        Then I click on element with xpath "//button[@type='submit']"
        And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" to be present
        Then I click on element with xpath "//h5[contains(text(),'Log Out')]"
        And I wait for element with xpath "//h1[contains(text(),'Confirmation')]" to be present
        Then I click on element with xpath "//button/span[text()='Log Out']"
        And I wait for element with xpath "//h3[contains(text(),'Assessment Control')]" to be present
        Then I type "student4@gmail.com" into element with xpath "//*[@formcontrolname='email']"
        Then I type "12345Abc" into element with xpath "//*[@formcontrolname='password']"
        Then I click on element with xpath "//button[@type='submit']"
        And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'STUDENT')]" to be present
        Then I click on element with xpath "//h5[contains(text(),'My Assignments')]"
        And I wait for element with xpath "//h4[contains(text(),'My Assignments')]" to be present
        And I wait for 3 sec
        Then I click on element with xpath "//*[contains(text(),'MCO12345')]/..//button/span[text()='Go To Assessment']"
        And I wait for element with xpath "//h4[contains(text(),'MCO12345')]" to be present
        Then I click on element with xpath "//mat-checkbox[label/span[contains(text(), 'Other')]]//label[@class='mat-checkbox-layout']"
        Then I type "Testing Other Answer" into element with xpath "//*[contains(text(),'MCO question test?')]/..//*[@formcontrolname='textAnswer']"
        Then I click on element with xpath "//button/span[text()='Submit My Answers']"
        And I wait for element with xpath "//h1[contains(text(),'Success!')]" to be present
        Then I click on element with xpath "//button/span[text()='Ok']"
        And I wait for element with xpath "//h4[contains(text(),'My Assignments')]" to be present
        And element with xpath "//h4[contains(text(),'My Assignments')]" should be present
        And I wait for 5 sec
        
