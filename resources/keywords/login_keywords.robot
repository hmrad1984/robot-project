*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/login_page.robot
Resource  ../../variables/credentials.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    https://the-internet.herokuapp.com/login    chrome
    Maximize Browser Window
    Set Selenium Timeout    10s

Input Credentials And Submit
    Enter Username    ${USERNAME}
    Enter Password    ${PASSWORD}
    Click Login
