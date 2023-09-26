@AssessmentControlTest
Feature: CreateAssignment


  @CreateAssignmentStudent
   Scenario:DMA Create student assignment
      Given DM open url "http://ask-stage.portnov.com/"
      When DM type "melek2703@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      When DM type "qwerty22" into element with xpath "//*[@formcontrolname='password']"
      And DM click on element with xpath "//button[@type='submit']"
      Then DM wait for element with xpath "//ac-side-menu[@class='ng-tns-c0-0']" to be present
      Then DM click on element with xpath "//a[@href='/#/assignments']//div[@class='mat-list-item-content']"
      Then DM click on element with xpath "//button[@class='mat-raised-button mat-primary']"
      Then DM click on element with xpath "//mat-select[@id='mat-select-1']//div[@class='mat-select-arrow-wrapper']"
      Then DM click on element using JavaScript with xpath "//span[normalize-space()='Fun Facts']"
      Then DM click on element with xpath "(//mat-pseudo-checkbox)[8]"
      Then DM click on element with xpath "//button[@type='submit']"