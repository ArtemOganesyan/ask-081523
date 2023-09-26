@AssessmentControlTest
  Feature: CreateAssignment

    @CreateAssignmentStudent
Scenario:DMA Create student assignment
      Given DM open url "http://ask-stage.portnov.com/"
      When DM type "melek2703@gmail.com" into element with xpath "//*[@formcontrolname='email']"
      When DM type "qwerty22" into element with xpath "//*[@formcontrolname='password']"
      And DM click on element with xpath "//button[@type='submit']"