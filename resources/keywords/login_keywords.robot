*** Settings ***
Library    SeleniumLibrary
Resource          ../../variables/credentials.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    https://the-internet.herokuapp.com/login    chrome
    Maximize Browser Window
    Set Selenium Timeout    10s

Input Credentials And Submit
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//button[@type='submit']
