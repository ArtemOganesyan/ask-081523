# This is my feature file v+

# Scenario

  @feature
  Feature:

    @Feature: Test

      @scenario_1
Scenario:
Feature: Test cases-Single choice question(Options)

  @SingleChoiceQuestion(Options)-VG
  Scenario:Verify radio button functionality-VG

    Then VG execute test
    Then VG type email
    Then VG type password
    Then VG click submit
    Then VG click quizzes
    Then VG click create new quiz button
    Then VG type title
    Then VG click add question
    Then VG click single-choice
    Then VG type text in Option1 with input "abc"
    Then VG click radio button
