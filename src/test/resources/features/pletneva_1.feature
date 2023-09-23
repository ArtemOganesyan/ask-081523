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
    And I wait for element with xpath "//*[contains(text(), 'text area option for this question?')]" to be present
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'text area option for this question?')]"
