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
    Then I wait for 1 sec
    Then element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent mat-radio-checked']" should be present

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
    Then I type "NEW Quiz111" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    # Add question button
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single-choice question
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
    # Type the question in the text field
    Then I type "One option at a time" into element with xpath "//textarea[@formcontrolname='question']"
    Then I wait for 2 sec
    # Type text in the Option1 text field
    Then I type "OPTION1" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I wait for 2 sec
    # Type text in the Option2 text field
    Then I type "OPTION2" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    # Click first radio button
    Then YP click radio button with xpath "//mat-radio-button[@class='mat-radio-button mat-accent']"
    Then I wait for 1 sec
    # Click second radio button
    Then YP click radio button with xpath "//mat-radio-group[2]/mat-radio-button"
    Then I wait for 1 sec
    # Click Save button
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec
    # Search the quiz
    Then I scroll to the element with xpath "//div[@class='quizzes']/..//*[contains(text(), 'NEW Quiz111')]" with offset 0
    Then I wait for 3 sec
    # See the title of the quiz
    Then element with xpath "//div[@class='quizzes']" should contain text "NEW Quiz111"
    Then I wait for 3 sec



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
    Then I wait for 5 sec
    Then I scroll to the element with xpath "//div[@class='quizzes']/..//*[contains(text(), 'ALPHANUMERIC')]" with offset 0
    #Check the title of the quiz
    Then element with xpath "//div[@class='quizzes']" should contain text "ALPHANUMERIC"
    Then I wait for 2 sec


  @SingleChoiceQuestion(Options)-yp
  Scenario:Verify ONLY 15 options

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
    Then I type "15 Options" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    # Add question button
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single-choice question
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
    # Type question in a text field
    Then I type "15" into element with xpath "//textarea[@formcontrolname='question']"
    Then I wait for 2 sec
     # Type text in the Option1 text field
    When I type "test1" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    Then I wait for 2 sec
    # Type text in the Option2 text field
    When I type "test2" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I wait for 2 sec
    # Add options
    Then YP click Add option 14 times
    Then I wait for 2 sec
     # Click first radio button
    Then YP click radio button with xpath "//mat-radio-button[@class='mat-radio-button mat-accent']"
    Then I wait for 1 sec
    # Click Save button
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec



  @SingleChoiceQuestion(Options)-yp
  Scenario:Verification of "Move option down" button functionality

    # Open URL
    Given I open url "http://ask-stage.portnov.com"
    # Type email
    Then I type "amr916@byui.me" into element with xpath "//*[@formcontrolname='email']"
    # Type password
    Then I type "tester321" into element with xpath "//*[@formcontrolname='password']"
    # Click Submit button to ligin
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    # Click Quizzes on the left side
    Then I click on element using JavaScript with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    # Click Create New Quiz button
    Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary' and .//span[text()='Create New Quiz']]"
    Then I wait for 2 sec
    # Type title of the quiz
    Then I type "Move down" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    Then I wait for 2 sec
    # Click add question
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single - choice
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
     # Type question
    Then I type "Move down" into element with xpath "//textarea[@formcontrolname='question']"
    # Type text in the Option1 text field
    Then I type "answer1" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    # Type text in the Option2 text field
    Then I type "answer2" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I wait for 2 sec
    # Click Settings gear
    Then I click on element with xpath "//mat-radio-group[1]//*[contains(text(),'settings')]"
    Then I wait for 2 sec
    # Click Move down
    Then I click on element with xpath "//span[contains(text(),'Move option down')]"
    Then I wait for 2 sec
     # Click first radio button
    Then YP click radio button with xpath "//mat-radio-button[@class='mat-radio-button mat-accent']"
    Then I wait for 1 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='quizzes']" should contain text "Move down"
    Then I wait for 2 sec




  @SingleChoiceQuestion(Options)-yp
  Scenario:Verification of "Delete option" button functionality

    # Open URL
    Given I open url "http://ask-stage.portnov.com"
    # Type email
    Then I type "amr916@byui.me" into element with xpath "//*[@formcontrolname='email']"
    # Type password
    Then I type "tester321" into element with xpath "//*[@formcontrolname='password']"
    # Click Submit to login
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    # Click Quizzes on the left side
    Then I click on element using JavaScript with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    # Click Create New Quiz button
    Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary' and .//span[text()='Create New Quiz']]"
    Then I wait for 2 sec
    # Type title of the quiz
    Then I type "Delete option" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    Then I wait for 2 sec
    # Click add question
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single-choice
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
    # Type text in the Option1 text field
    Then I type "answer1" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    # Type text in the Option2 text field
    Then I type "answer2" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I wait for 2 sec
    # Click radio button
    Then I click on element with xpath "//mat-radio-group[2]/mat-radio-button"
    Then I wait for 2 sec
    # Click Add option button
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    # Type text in the Option3 text field
    Then I type "this option will be deleted" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[3]"
    Then I wait for 2 sec
    # Click Settings gear
    Then I click on element with xpath "//mat-radio-group[3]//*[contains(text(),'settings')]"
    Then I wait for 2 sec
    # Click Delete Option
    Then I click on element with xpath "//span[contains(text(),'Delete Option')]"
    Then I wait for 2 sec
    Then element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[3]" should not be present


  @SingleChoiceQuestion(Options)-yp
  Scenario:Verification of "Move option up" button functionality

    # Open URL
    Given I open url "http://ask-stage.portnov.com"
    # Type email
    Then I type "amr916@byui.me" into element with xpath "//*[@formcontrolname='email']"
    # Type password
    Then I type "tester321" into element with xpath "//*[@formcontrolname='password']"
    # Click Submit button to ligin
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    # Click Quizzes on the left side
    Then I click on element using JavaScript with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    # Click Create New Quiz button
    Then I click on element using JavaScript with xpath "//button[@class='mat-raised-button mat-primary' and .//span[text()='Create New Quiz']]"
    Then I wait for 2 sec
    # Type title of the quiz
    Then I type "Move option up" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
    Then I wait for 2 sec
    # Click add question
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    # Click single - choice
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]"
    Then I wait for 2 sec
    # Type question
    Then I type "Move up" into element with xpath "//textarea[@formcontrolname='question']"
    # Type text in the Option1 text field
    Then I type "answer1" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[1]"
    # Type text in the Option2 text field
    Then I type "answer2" into element with xpath "(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])[2]"
    Then I wait for 2 sec
    # Click radio button
    Then I click on element with xpath "//mat-radio-group[2]/mat-radio-button"
    Then I wait for 2 sec
    # Click Settings gear
    Then I click on element with xpath "//mat-radio-group[2]//*[contains(text(),'settings')]"
    Then I wait for 2 sec
    # Click Move up
    Then I click on element with xpath "//span[contains(text(),'Move option up')]"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='quizzes']" should contain text "Move option up"
    Then I wait for 2 sec




