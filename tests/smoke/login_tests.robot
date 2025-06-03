*** Settings ***
Library           SeleniumLibrary
Resource          ../../resources/keywords/login_keywords.robot

Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Variables ***
${LOGIN URL}    https://the-internet.herokuapp.com/login

*** Test Cases ***
Login With Valid Credentials
    [Tags]    smoke
    Input Credentials And Submit
    Verify Login Success

*** Test Cases ***
Invalid Login With Wrong Password
    Set Test Variable    ${PASSWORD}    wrongpassword
    Input Credentials And Submit
    Verify Login Failed


