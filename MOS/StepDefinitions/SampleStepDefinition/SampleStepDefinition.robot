*** Settings ***
Library           Selenium2Library
Resource          /Users/adilimroz/PycharmProjects/MOS/StepDefinitions/SampleStepDefinition/SampleVariable.robot
Library           String
Library           Collections

*** Keywords ***
Input search string
    [Arguments]  ${searchString}
    input text  ${SearchTextField}  ${searchString}