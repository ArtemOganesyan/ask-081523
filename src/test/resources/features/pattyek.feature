#This is my another feature file

#Scenario
@ask-functional-feature-eka
Feature: Functional tests for ASK

  Background: Open App (Student)
    Given I open url "http://ask-stage.portnov.com"


  @ask-loginPage
  Scenario: Forgot password
    Given I open url "http://ask-stage.portnov.com/#/login"
    Then I click on element with xpath "//a[contains(text(),'I forgot my password')]"
    Then I wait for element with xpath "//h4[contains(text(),'Reset Password Request')]" to be present
    Then I type "testfreehello@gmail.com" into element with xpath "//input[@id='mat-input-2']"
    Then I click on element with xpath "//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-forgot-password-page[1]/mat-card[1]/form[1]/div[1]/button[1]"
    Then I wait for 3 sec
    And element with xpath "//h4[contains(text(),'Your request is confirmed')]" should be present

  @ask-quizzes
  Scenario: Create Quizzes
    #Step 1 I type valid credentials
    Then I type "penaka29@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Abc12345" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    #Step 2 Click on 'Quizzes' button
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 3 sec
    #Step 3 Click on 'Create New Quiz' button
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    Then I wait for 3 sec
    Then I type "Patty Test 7" into element with xpath "//*[@formcontrolname='name']"
    Then I wait for 3 sec
    Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//*[contains(text(), 'Q')]/../../..//mat-radio-button[2]"
    Then I type "Who are you" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "patty" into element with xpath "//textarea[@formcontrolname='option'][1]"
    Then I wait for 3 sec
    Then I type "who know" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I wait for 3 sec
    Then I click on element with xpath "//ac-question-body-form/div[1]/div[2]/div[1]/mat-radio-group[1]/mat-radio-button[1]/label[1]/div[1]/div[2]"
    #Step 4 Click on 'Save' Button
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for 3 sec



