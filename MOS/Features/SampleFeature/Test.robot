*** Settings ***
Library           Selenium2Library
Library           Collections
Library           /Users/adilimroz/PycharmProjects/MOS/Utilities/TestData.py
Resource          /Users/adilimroz/PycharmProjects/MOS/resource.robot
Resource          /Users/adilimroz/PycharmProjects/MOS/Utilities/Utility.robot
Resource          /Users/adilimroz/PycharmProjects/MOS/StepDefinitions/SampleStepDefinition/SampleStepDefinition.robot

Test Setup        Launch browser
Test Teardown     Close Browser

*** Variables ***
${TestDataFile}     /Users/adilimroz/PycharmProjects/MOS/SampleWorkbook.xlsx

*** Test Cases ***
Check google search
    [Tags]  Sanity
    ${SearchString}  Get data from excel  ${TestDataFile}  Sheet1  dataOne
    Input search string  ${SearchString}
    Check page load  gle.com

