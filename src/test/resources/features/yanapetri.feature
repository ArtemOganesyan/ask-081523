@ask-functional-feature-yp
Feature: Test cases-Single choice question(Options)

  @SingleChoiceQuestion(Options)-yp
  Scenario:Verify radio button functionality-YP

    Then YP execute test
    Then YP type email
    Then YP type password
    Then YP click submit
    Then YP click quizzes
    Then YP click create new quiz button
    Then YP type title
    Then YP click add question
    Then YP click single-choice
    Then YP type text in Option1 with input "abc"
    Then YP click radio button

  @SingleChoiceQuestion(Options)-yp
  Scenario:Verification of selection one option at a time

    #Open URL
    Given I open url "http://ask-stage.portnov.com/"
    # Fill in email
    Then I type "amr916@byui.me" into element with xpath "//*[@formcontrolname='email']"
    # Fill in password
    Then I type "tester321" into element with xpath "//*[@formcontrolname='password']"
    # Click Submit button
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    # Click Quizzes on the left side
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    # Click Create New Quiz button
    Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']/..//span[contains(text(),'Create New Quiz')]"
    Then I wait for 2 sec
    # Type title of the quiz
    Then I type "NEW Quiz" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    # Add question button
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single-choice question
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
    # Click first radio button
    Then YP click radio button with xpath "//mat-radio-button[@class='mat-radio-button mat-accent']"
    Then I wait for 1 sec
    # Click second radio button
    Then YP click radio button with xpath "//mat-radio-group[2]/mat-radio-button"
    Then I wait for 1 sec


  @SingleChoiceQuestion(Options)-yp
  Scenario:Verify that the quiz can't be saved without selected option
    
     #Open URL
    Given I open url "http://ask-stage.portnov.com/"
    # Fill in email
    Then I type "amr916@byui.me" into element with xpath "//*[@formcontrolname='email']"
    # Fill in password
    Then I type "tester321" into element with xpath "//*[@formcontrolname='password']"
    # Click Submit button
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    # Click Quizzes on the left side
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    # Click Create New Quiz button
    Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']/..//span[contains(text(),'Create New Quiz')]"
    Then I wait for 2 sec
    # Type title of the quiz
    Then I type "NEW Test Quiz" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    # Add question button
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single-choice question
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
    # Type question in a text field
    Then I type "Test" into element with xpath "//textarea[@formcontrolname='question']"
    Then I wait for 2 sec
    # Type text in the Option1 text field
    When I type "test1" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I wait for 2 sec
    # Type text in the Option2 text field
    When I type "test2" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I wait for 2 sec
    # Click Save button
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec
    # See pop up error message
    Then element with xpath "//div[contains(text(),'Quiz is not completed')]" should be present
    Then I wait for 2 sec


  @SingleChoiceQuestion(Options)-yp
  Scenario:Verification of alphanumeric and sp. characters in the option text field

 #Open URL
    Given I open url "http://ask-stage.portnov.com/"
    # Fill in email
    Then I type "amr916@byui.me" into element with xpath "//*[@formcontrolname='email']"
    # Fill in password
    Then I type "tester321" into element with xpath "//*[@formcontrolname='password']"
    # Click Submit button
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    # Click Quizzes on the left side
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    # Click Create New Quiz button
    Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary']/..//span[contains(text(),'Create New Quiz')]"
    Then I wait for 2 sec
     # Type title of the quiz
    Then I type "ALPHANUMERIC" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    # Add question button
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single-choice question
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
    # Type question in a text field
    Then I type "Time1" into element with xpath "//textarea[@formcontrolname='question']"
    Then I wait for 2 sec
    # Type text in the Option1 text field
    When I type "@1pm!!!" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I wait for 2 sec
    # Type text in the Option2 text field
    When I type "@2pm!!!" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I wait for 2 sec
     # Click first radio button
    Then YP click radio button with xpath "//mat-radio-button[@class='mat-radio-button mat-accent']"
    Then I wait for 2 sec
    # Click Save button
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec
    #Check the title of the quiz
    Then element with xpath "//div[@class='quizzes']" should contain text "ALPHANUMERIC"
    Then I wait for 2 sec

