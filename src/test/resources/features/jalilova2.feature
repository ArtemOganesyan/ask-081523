# this is my new feature file
  #Saya's Scenario

@predefined
Feature: Saadat Jalilova testcase


@ask-Teacher-case5-SJ
Scenario: Single Choise question "Other" SJ
Given SJ open ask-stage url
Then SJ type email
Then SJ type password
Then SJ click on Submit
And SJ wait for 3 sec
Then SJ see the main menu
  And SJ wait for 3 sec
Then SJ click on Quizzes
And SJ wait for 3 sec
Then SJ click on element with xpath "//span[contains(text(),'Create New Quiz')]"
And SJ wait for 3 sec
Then SJ type "Saadat New Test" into element with xpath "//input[@id='mat-input-2']"
And SJ wait for 5 sec
Then SJ click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
Then SJ click on element with xpath "//*[contains(text(),'Single-Choice')]"
And SJ wait for 3 sec
Then SJ type "Why QA" into element with xpath "//textarea[@formcontrolname='question']"
Then SJ click on element with xpath "(//*[contains(text(), 'Q1')]/../../..//*[@formcontrolname='option'])[1]"
Then SJ type "It's my fate" into element with xpath "(//*[contains(text(), 'Q1')]/../../..//*[@formcontrolname='option'])[1]"
Then SJ type "They made me" into element with xpath "(//*[contains(text(), 'Q1')]/../../..//*[@formcontrolname='option'])[2]"
Then SJ click on element with xpath "//*[contains(text(),'Include \"Other\" text area option for this question?')]"
And SJ wait for 5 sec