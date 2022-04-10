*** Settings ***
Library  SeleniumLibrary
Suite Setup  Log   Inside Test Suite Setup
Suite Teardown  Log  Inside Test Suite Teardown

Test Setup  Log  Inside Test case Setup
Test Teardown  Log  Inside Test Case Teardown

*** Variables ***
${google_search}  https://www.google.co.in/
${search_query}  filpkart
${product_search}  LG TV
${email}  akash@gmail.com
${password}  12345

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
    Execute JavaScript
    window.scrollTo(0,500)

Purchase Item Test
    [Documentation]  This page is for Purchase
    [Tags]  Purchase
    sleep  3s
    Click Element  xpath:/html/body/div/div/div[3]/div[1]/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  3s
    Switch Window  title:POCO X3 ( 64 GB Storage, 6 GB RAM ) Online at Best Price On Flipkart.com
    sleep  3s
    Click Button  class:_2KpZ6l._2U9uOA.ihZ75k._3AWRsL
    sleep  3s
    Email Address
    sleep  3s
    Password Data
    sleep  3s
    Click Button  xpath:/html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[4]/button
    sleep  3s


*** Keywords ***
Search Data
    Input Text  name:q  ${search_query}

Search Filpkart Data
    Input Text  name:q  ${product_search}

Email Address
    Input Text  class:_17N0em  ${email}

Password Data
    Input Text  class:_3mctLh  ${password}