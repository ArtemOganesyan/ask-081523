@AssessmentControlTest
  Feature: CreateAssignment

    @CreateAssignmentStudent
    Scenario:Create assignment
      Given I open url "http://ask-stage.portnov.com/"
      When I type "melek2703@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      When I type "qwerty22" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//ac-side-menu[@class='ng-tns-c0-0']" to be present
      Then I click on element with xpath "//a[@href='/#/assignments']//div[@class='mat-list-item-content']"
      Then I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
      Then I click on element with xpath "//mat-select[@id='mat-select-1']//div[@class='mat-select-arrow-wrapper']"
      Then I click on element using JavaScript with xpath "//span[normalize-space()='Fun Facts']"
      Then I click on element with xpath "(//mat-pseudo-checkbox)[8]"
      Then I click on element with xpath "//button[@type='submit']"