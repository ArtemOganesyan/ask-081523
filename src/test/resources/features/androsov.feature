@testcases
Feature: Functional tests for ASK

@single-choice-quiz-creation
  Scenario: Create single-choice quiz with showstopper
    Given I open url "http://ask-stage.portnov.com"
    Then I type "marianna_androsov@yahoo.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Test123" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" to be present
    And element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" should be displayed
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I click on element with xpath "//*[contains(text(),'Create New Quiz')]"
    And I wait for element with xpath "//*[@formcontrolname='name']" to be present
    Then I click on element with xpath "//*[@formcontrolname='name']"
    Then I type "Test Case Quiz for MANDROSOV" into element with xpath "//*[@formcontrolname='name']"
    Then I click on element with xpath "//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]/span[1]"
    Then I click on element with xpath "//*[contains(text(),'Single-Choice')]"
    Then I click on element with xpath "//*[contains(text(),'Q1')]/../../../..//*[@formcontrolname='question']"
    Then I type "What does QA stand for?" into element with xpath "//*[contains(text(),'Q1')]/../../../..//*[@formcontrolname='question']"
    Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I type "Quantity Assurance" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I type "Quality Assurance" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I click on element with xpath "(//mat-radio-button[@class='mat-radio-button mat-accent'])[2]"
    Then I click on element with xpath "//*[contains(text(),'Q1')]/../../../..//*[contains(text(),'Add Option')]"
    Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[3]"
    Then I type "Quantify Assurance" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[3]"
    Then I click on element with xpath "//*[contains(text(),'Q1')]/../../..//*[@class='mat-checkbox mat-accent']"
    Then I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'Save')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present

  @showstopper-verification
  Scenario: Verify Show-Stopper checkbox works when all required fields are filled
    Given I open url "http://ask-stage.portnov.com"
    Then I type "marianna_androsov@yahoo.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Test123" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" to be present
    And element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" should be displayed
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    Then I click on element with xpath "//*[contains(text(),'Create New Quiz')]"
    And I wait for element with xpath "//*[@formcontrolname='name']" to be present
    Then I click on element with xpath "//*[@formcontrolname='name']"
    Then I type "androsov quiz 1" into element with xpath "//*[@formcontrolname='name']"
    Then I click on element with xpath "//*[@class='mat-icon material-icons']"
    Then I click on element with xpath "//*[contains(text(), 'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I click on element with xpath "//*[contains(text(),'Q1')]/../../../..//*[@formcontrolname='question']"
    Then I type "what color is the sky?" into element with xpath "//*[contains(text(),'Q1')]/../../../..//*[@formcontrolname='question']"
    Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I type "grey" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I type "blue" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I click on element with xpath "(//mat-radio-button[@class='mat-radio-button mat-accent'])[2]"
    Then I click on element with xpath "//*[contains(text(),'Q1')]/../../../..//*[contains(text(),'Add Option')]"
    Then I click on element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[3]"
    Then I type "pink" into element with xpath "(//*[contains(text(),'Q1')]/../../../..//*[@formcontrolname='option'])[3]"
    Then I click on element with xpath "//*[@class='controls ng-star-inserted shift']"
    Then I click on element with xpath "//body[1]/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]/span[1]"
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'Q2')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I click on element with xpath "//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='question']"
    Then I type "What is 11+11?" into element with xpath "//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='question']"
    Then I click on element with xpath "(//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='option'])[1]"
    Then I type "23" into element with xpath "(//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='option'])[1]"
    Then I click on element with xpath "(//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='option'])[2]"
    Then I type "22" into element with xpath "(//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='option'])[2]"
    Then I click on element with xpath "(//*[contains(text(), 'Q2')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent'])[2]"
    Then I click on element with xpath "//*[contains(text(),'Q2')]/../../..//*[contains(text(),'Add Option')]"
    Then I click on element with xpath "(//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='option'])[3]"
    Then I type "21" into element with xpath "(//*[contains(text(),'Q2')]/../../..//*[@formcontrolname='option'])[3]"
    Then I click on element with xpath "//*[@class='controls ng-star-inserted shift']"
    Then I click on element with xpath "//body[1]/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]/span[1]"
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'Q3')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I click on element with xpath "//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='question']"
    Then I type "What is 11*11?" into element with xpath "//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='question']"
    Then I click on element with xpath "(//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='option'])[1]"
    Then I type "121" into element with xpath "(//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='option'])[1]"
    Then I click on element with xpath "(//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='option'])[2]"
    Then I type "122" into element with xpath "(//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='option'])[2]"
    Then I click on element with xpath "(//*[contains(text(), 'Q3')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent'])[1]"
    Then I click on element with xpath "//*[contains(text(),'Q3')]/../../..//*[contains(text(),'Add Option')]"
    Then I click on element with xpath "(//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='option'])[3]"
    Then I type "123" into element with xpath "(//*[contains(text(),'Q3')]/../../..//*[@formcontrolname='option'])[3]"
    Then I click on element with xpath "//*[contains(text(),'Q3')]/../../..//*[contains(text(),'Show-Stopper')]"
    Then I click on element with xpath "//*[contains(text(),'Save')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present

  @student-quiz-verification
  Scenario: Verify that quiz fails when Single Choice Show-Stopper question is answered incorrectly
    Given I open url "http://ask-stage.portnov.com"
    Then I type "androma16@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Test12345" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'STUDENT')]" to be present
    And element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'STUDENT')]" should be displayed
    Then I click on element with xpath "//h5[contains(text(),'My Assignments')]"
    Then I click on element using JavaScript with xpath "//*[contains(text(),'androsov quiz 1')]/..//*[contains(text(),'Go To Assessment')]"
    Then I click on element with xpath "//*[contains(text(),'Question 1')]/../../..//*[contains(text(),'blue')]"
    Then I click on element with xpath "//*[contains(text(),'Question 2')]/..//*[contains(text(),'22')]"
    Then I click on element with xpath "//*[contains(text(),'Question 3')]/..//*[contains(text(),'123')]"
    Then I click on element with xpath "//*[contains(text(),'Submit My Answers')]"
    Then I wait for element with xpath "//*[contains(text(),'Success!')]" to be present
    Then I click on element with xpath "//*[contains(text(),'Ok')]"
    Then I click on element with xpath "//*[contains(text(),'My Grades')]"
    Then I wait for element with xpath "//*[contains(text(),'androsov quiz 1')]/..//*[contains(text(),'FAILED')]" to be present
    And I wait for 5 sec
