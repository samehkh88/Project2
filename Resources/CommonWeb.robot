*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL} =    https://www.saucedemo.com/
${BROWSER} =    chrome

*** Keywords ***
Start web Test
    open browser       ${URL}   ${BROWSER}
    MAXIMIZE BROWSER WINDOW

Close web Browser
    Close Browser