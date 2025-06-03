*** Settings ***
Library           SeleniumLibrary
Resource          ../../resources/keywords/login_keywords.robot
Resource          ../../variables/credentials.robot

Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Variables ***
${LOGIN URL}    https://the-internet.herokuapp.com/login

*** Test Cases ***
Login With Valid Credentials
    [Tags]    smoke
    Input Credentials And Submit
    Page Should Contain    Secure Area
