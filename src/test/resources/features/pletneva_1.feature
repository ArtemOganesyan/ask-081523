@ask-functional-feature-PMV
Feature: PMV Functional test for ASK

  Background: open URL and Sign-In
  # Open url 'http://ask-stage.portnov.com'
    Given I open url "http://ask-stage.portnov.com"
  # Fill in Email field
    Then I type "margaritafortest88@gmail.com" into element with xpath "//*[@formcontrolname='email']"
  # Fill in Password field
    Then I type "abc123" into element with xpath "//*[@formcontrolname='password']"
  # Click the "Sign In" button
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]" to be present

  @Scenario-PMV-ask-single-choice-other-textarea
  Scenario: PMV Test Case ASK081523-108 Verify that Single-Choice question includes "Other" text area option
  # Click on the "Quizzes" on the left side of the page
    Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    And I wait for element with xpath "//h4[contains(text(), 'List of Quizzes')]" to be present
  # Click button "Create New Quiz"
    Then I click on element with xpath "//span[contains(text(), 'Create New Quiz')]"
    And I wait for 2 sec
  # Type in name of the quiz 123
    Then I type "123" into element with xpath "//input[@id='mat-input-2']"
  # Click the button "Add New Question"
    Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I wait for 2 sec
  # Click on "Single-Choice" question type radio button
    Then I click on element with xpath "//*[contains(text(), 'Single-Choice')]"
    And I wait for 2 sec
  # Verify that 'Include "Other" text area option for this question?' is present and checkbox is clickable
    And element with xpath "//*[contains(text(), 'text area option for this question?')]" should be displayed

  @Scenario-PMV-ask-single-choice-other-textarea-characters
  Scenario: PMV  Test Case ASK081523-109 Verify that user able to type Alphanumeric & Special characters in "Other" text area
  # Click on the "Assignments" on the left side of the page
    Then I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    And I wait for element with xpath "//h4[contains(text(), 'List of Assignments')]" to be present
  # Click the button "Create New Assignment"
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'Create New Assignment')]"
    Then I wait for element with xpath "//h4[contains (text(), 'Give Assignment')]" to be present
  # Click on drop-down menu "Select Quiz To Assign"
    Then I click on element using JavaScript with xpath "//*[text()='Select Quiz To Assign'][1]"
    And I wait for 3 sec
  # Click on student name "Test_student_liliana"
    Then I click on element with xpath "//text()[contains(.,'TestStudentLiliana')]/../..//div[@class='mat-list-text']"
  # Click on "123" quiz from drop-down menu "Select Quiz To Assign" -
    Then I click on element using JavaScript with xpath "//mat-selection-list/mat-list-option[36]"
  #Click on "Give Assignment" button
    Then I click on element with xpath "//button[@type='submit']"
  # Click on "Log Out" on the left side of the page
    Then I click on element with xpath "//h5[contains(text(), 'Log Out')]"
    And I wait for 3 sec
  # Click on "Log Out" button
    Then I click on element with xpath "//button[@type='button'][2]"
    And I wait for 3 sec
  # Fill in Email field
    Then I type "liliana641@mechanicalcomfortservices.com" into element with xpath "//*[@formcontrolname='email']"
  # Fill in Password field
    Then I type "abc123" into element with xpath "//*[@formcontrolname='password']"
  # Click the "Sign In" button
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//mat-sidenav/ac-side-menu//p[contains(text(), 'STUDENT')]" to be present
  # Click on "My Assignments" on the left side of the page
    Then I click on element with xpath "//h5[contains(text(), 'My Assignments')]"
    And I wait for 3 sec
  # Click on "Go To Assessment" button on "123" quiz
    Then I click on element with xpath "(//*[contains(text(), 'Go To Assessment')])[1]"
    And I wait for 3 sec
  # Type in "Other" text area following text
    Then I type "September, 2023!" into element with xpath "//textarea[@formcontrolname='textAnswer']"
    And I wait for 2 sec
  # Assert that "Other" text area contains text "Sunday, August 20, 2023!"
    Then element with xpath "//textarea[@formcontrolname='textAnswer']" should contain text "September, 2023!"