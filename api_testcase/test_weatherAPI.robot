*** Settings ***
Documentation     Verify weather gov api is working
Resource          ./init.robot
Force Tags        WeatherAPI
Test Timeout      900


*** Test Cases ***
Get Weather With State Name Should Respond 200
    [Tags]    Weather_A
    ${resp} =    Get Weather    CA
    Verify Status Code Should Be Expected    ${resp}    200
    Verify Response Content Should Be Expected    ${resp.json()['features'][0]['geometry']}    ${None}

Get Weather With Invalid State Name Should Respond 400
    [Tags]    Weather_B
    ${resp} =    Get Weather    RANDOM_STRING
    Verify Status Code Should Be Expected    ${resp}    400
    Verify Response Content Should Be Expected    ${resp.json()['title']}    Bad Request

*** Keywords ***
