*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${google_search}  https://www.google.co.in/
${search_query}  filpkart
${product_search}  iphone

*** Test Cases ***
Google Search Test
    [Documentation]  This page is to test Chrome
    [Tags]  Google
    Open Browser  ${google_search}  chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element  class:LC20lb

Filpkart Search Test
    [Documentation]  This page is for filpkart search
    [Tags]  filpkart
    sleep  3s
    Click Button  class:_2KpZ6l
    Search Filpkart Data
    sleep  3s
    Click Button  class:L0Z3Pu

*** Keywords ***
Search Data
    Input Text  name:q  ${search_query}

Search Filpkart Data
    Input Text  name:q  ${product_search}