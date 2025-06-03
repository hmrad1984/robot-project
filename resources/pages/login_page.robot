*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}    id=username
${PASSWORD_FIELD}    id=password
${LOGIN_BUTTON}      xpath=//button[@type='submit']
${SUCCESS_MESSAGE}   css=.flash.success
${ERROR_MESSAGE}   css=.flash.error


*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}

Verify Login Success
    Page Should Contain Element    ${SUCCESS_MESSAGE}
    Element Should Contain    ${SUCCESS_MESSAGE}    You logged into a secure area!


Verify Login Failed
    Page Should Contain Element    ${ERROR_MESSAGE}

