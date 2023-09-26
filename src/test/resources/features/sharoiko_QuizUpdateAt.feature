@predefined
Feature: AS ASK081523 QuizUpdatedAt

  @Scenario-AS-QuizUpdateAt
  Scenario: AS Test Case ASK081523-444 "Quiz - Updated At" same time zone
  # 1 Open url 'http://ask-stage.portnov.com'
    Given I open url "http://ask-stage.portnov.com"
    Then I should see page title as "Assessment Control @ Portnov"
  # 2  Fill in Email field
    Then I type "qa1@test.com" into element with xpath "//input[@formcontrolname='email']"
  # 3. Fill in Password field
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
  # 4. Click on the "Sign In" button
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for 1 sec
  # 5.Click on the "Quizzes" on the left side of the page
    Then I click on element using JavaScript with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 1 sec
  # 6. Select quiz from the list on the right side - quiz name - AnnaSh SQL Quiz1
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'AnnaSh')]"
  # 7. Click "Edit" button
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'AnnaSh')]/../../..//*[contains(text(), 'Edit')]"
    Then I wait for 1 sec
  # 8. Click "Save" button
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec
   # 9. Select quiz from the list on the right side -  quiz name - AnnaSh SQL Quiz1
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'AnnaSh')]"
    Then I wait for 2 sec
  # 10."Updated At:" date/time should be same as the local current date/time
  #  Then I validate Update At date
    Then AS validate the date with xpath "//mat-panel-title[contains(text(), 'AnnaSh')]/../../..//*[contains(text(), 'Updated At')]/../td[2]"
    Then I wait for 1 sec