git @ask-functional-feature-yp
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

