*** Keywords ***
Wait Until Page Contains Element And Input
    [Arguments]    ${element}    ${text}
    Wait Until Element Is Visible    ${element}
    Input Text    ${element}    ${text}

Wait Until Page Contains Element And Click
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    Click Element    ${element}

Verify Status Code Should Be Expected
    [Arguments]    ${resp}    ${statusCode}
    Should Be Equal As Strings    ${resp.status_code}    ${statusCode}

Verify Response Content Should Be Expected
    [Arguments]    ${resp}    ${content}
    Should Be Equal As Strings    ${resp}    ${content}