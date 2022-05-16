*** Settings ***
Documentation     Go to Google.com
Resource          ./init.robot
Force Tags        SearchGoogle
Test Timeout      900


*** Test Cases ***
Google Text And Verify Content Would Show Up
    [Tags]    SearchGoogle
    [Setup]    TestSetup
    Go To    https://www.google.com
    Wait Until Element Is Visible    ${GOOGLE_INPUT_FIELD}
    Input Text    ${GOOGLE_INPUT_FIELD}    ${SEARCH_TEXT}
    Wait Until Element Is Visible    ${GOOGLE_SEARCH_BTN}
    Click Element   ${GOOGLE_SEARCH_BTN}
    Wait Until Page Contains    ${SEARCH_TEXT}
    [Teardown]    TestTeardown

*** Keywords ***
TestSetup
    Set Test Variable    ${SEARCH_TEXT}    robot
    Create Webdriver    Chrome    executable_path=${DRIVER_PATH}

TestTeardown
    Close Browser
