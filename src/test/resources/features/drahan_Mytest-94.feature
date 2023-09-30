@mytest-ydr
Feature: my test case

  @mytest-94-yd
  Scenario: for one student with valid date

    Given I open url "http://ask-stage.portnov.com"
    Then element with xpath "//title[contains(text(), 'Assessment Control @ Portnov')] " should be present
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "jldrahan@yahoo.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "123qwe" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
    Then I click on element with xpath "//h5[contains(text(), 'Assignments')]"
    And element with xpath "//button[@class='mat-raised-button mat-primary']" should be present
    Then I click on element using JavaScript with xpath " //button[@class='mat-raised-button mat-primary']"
    And I wait for 2 sec

    Then I click on element using JavaScript with xpath "(//span[contains(text(),'All')])[1]"
    And I scroll to the element with xpath "//span[contains(text(),'ABC')]/../..//mat-option[@role='option']" with offset 1614
    And I click on element with xpath "//span[contains(text(),'ABC')]/../..//mat-option[@role='option']"

    Then I mouse over element with xpath "//*[contains(text(), 'Select Quiz To Assign')]"
    And I click on element using JavaScript with xpath "//span[contains(text(), 'Select')]/../..//div[@class='mat-select-value']"
    And I scroll to the element with xpath "//span[contains(text(),'SQA Ulla')]" with offset 3522
    Then I click on element using JavaScript with xpath " //span[contains(text(),'SQA Ulla')]"
    And I wait for 2 sec

    And I click on element using JavaScript with xpath "//text()[contains(.,'Student Five')]/../..//div[@class='mat-list-item-ripple mat-ripple']"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    And element with xpath "(//mat-panel-title[contains(text(),'Assignment Date')])[1]" should be enabled
    Then I click on element using JavaScript with xpath "(//div[@class='mat-list-text'])[1]"
    Then I click on element using JavaScript with xpath "//h5[contains(text (),'Log Out')]"
    And I click on element using JavaScript with xpath "//button[@class='mat-button mat-warn']"
    Then I should see page title as "Assessment Control @ Portnov"
    And I wait for 3 sec

    Then I type "student5@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345Abc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then I wait for element with xpath "//p[contains(text(), 'STUDENT')]" to be present
    Then I click on element with xpath "//h5[contains(text(),'My Assignments')]"
    And I wait for element with xpath "//td[contains(text(),'Assigned at:')]/../..//tr[@class='ng-star-inserted'][1]" to be present
    And element with xpath "//td[contains(text(),'Assigned at:')]/../..//tr[@class='ng-star-inserted'][1]" should be present
