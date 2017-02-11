*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Library           Collections
Library           /Users/adilimroz/PycharmProjects/MOS/Utilities/TestData.py
Resource          /Users/adilimroz/PycharmProjects/MOS/resource.robot

*** Keywords ***

Launch browser
    open browser    ${LOGIN URL}    ${BROWSER}      http://127.0.0.1:4444/wd/hub
    maximize browser window
    set browser implicit wait  ${HOMEPAGE WAIT TIME}

Get data from excel
    [Arguments]  ${ExcelSheetPath}  ${SheetName}  ${UniqueKey}
    ${ExtractedData}  get_single_row_data  ${ExcelSheetPath}  ${SheetName}  ${UniqueKey}
    [Return]  ${ExtractedData}

Check page load
    [Arguments]  ${UrlString}
    ${ExtractedUrl}  get location
    should contain  ${ExtractedUrl}  ${UrlString}

