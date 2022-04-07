*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  https://www.google.com/
${search_p}  Amazon.in
*** Test Cases ***
Login Screen Test
    [Documentation]  This is a login screen
    [Tags]  Users
    Log  Hello
Registration Screen Test
    [Documentation]  This is the registration screen
    [Tags]  register
    Log  Success

Admin Screen Test
    [Documentation]  This page is for Admins
    [Tags]  Admin
    Log  Admin

Google Chrome Test
    [Documentation]  This page is for Google Search
    [Tags]  Internet
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    Expected Keyword
    Submit Form
    sleep  5s
    Close Browser

*** Keywords ***
Expected Keyword
    Input Text  name:q  ${search_p}
