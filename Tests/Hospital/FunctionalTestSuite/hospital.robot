*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${username}   admin
${password}   12345

*** Test Cases ***
Hospital login test
    [Documentation]  Login page
    [Tags]  admin
    open browser  http://127.0.0.1:5000  chrome
    maximize browser window
    sleep  2s
    input text  name:username  ${username}
    sleep  1s
    input password  name:password  ${password}
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Registration tested
    [Documentation]  Registration
    [Tags]  admin
    input text  name:name  Amir
    sleep  1s
    input text  name:mobnumber  9089987682
    sleep  1s
    input text  name:age  12
    sleep  1s
    input text  name:address  Thirupathi
    sleep  1s
    input text  name:dob  09/04/2022
    sleep  1s
    input text  name:place  thirupur
    sleep  1s
    input text  name:pincode  600099
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s

Search Patient test
    [Documentation]  Search Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  3s
    input text  name:mobnumber  9090909090
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table[1]/tbody/tr[2]/td[2]/button
    sleep  5s

Viewall Patient test
    [Documentation]  Viewall Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep  5s

Update Patient test
    [Documentation]  Update Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep   1s
    input text  name:mobnumber  9090909090
    sleep  1s
    input text  name:name  Pugal
    sleep   1s
    input text  name:age  27
    sleep  1s
    input text  name:address  Madurai
    sleep   1s
    input text  name:dob  04/22/2022
    sleep  1s
    input text  name:place  Thailand
    sleep  1s
    input text  name:pincode  600056
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  3s

Delete Patient test
    [Documentation]  Delete Patient
    [Tags]  admin
    click Element  xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    input text  name:mobnumber  9090909090
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser

*** Keywords ***