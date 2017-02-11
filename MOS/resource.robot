*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Library           String

*** Variables ***
${BROWSER}        firefox
${DELAY}          0
${LOGIN URL}      http://www.google.com
${HOMEPAGE WAIT TIME}   50
${URL}

