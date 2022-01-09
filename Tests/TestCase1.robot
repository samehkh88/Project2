*** Settings ***

Resource    ../Resources/FrontOfficeApp.robot
Resource    ../Resources/CommonWeb.robot
Test Setup    Start web Test
Test Teardown    Close web Browser
Library    SeleniumLibrary

*** Variables ***

${User} =    standard_user
${password} =    secret_sauce


*** Test Cases ***
Test Case to try If-Else in Robot Framewotk
    [Documentation]    this is first test
    [Tags]    Smoke
    input text    id:user-name    ${User}
    input text    id:password    ${password}
    click button    id=login-button
    sleep    5s
    ${Item-on page} =    get element count    xpath:.//*[@class='inventory_item']

    run keyword if    ${Item-on page} == 10  Test keyword 1  Else If
    ...    ${Item-on page} < 10 and ${Item-on page} > 5  Test keyword 2

*** Keywords ***
Test keyword 1
    log to console    found item as expected

Test keyword 2
    log to console    found item less than  expected