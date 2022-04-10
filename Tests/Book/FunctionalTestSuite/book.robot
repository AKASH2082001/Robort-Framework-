*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${username}  admin
${password}  9875
${email}  ram@gmail.com
${password}   12345


*** Test Cases ***
User Registration test
    [Documentation]  Registration page
    [Tags]  user
    open browser  http://127.0.0.1:5000  chrome
    maximize browser window
    sleep  1s
    click link  xpath:/html/body/center/a
    sleep  2s
    input text  name:name  Ram
    sleep  1s
    input text  name:add  No.4,thirupattur
    sleep  1s
    input text  name:email  ${email}
    sleep  1s
    input text  name:pno  9176117999
    sleep  1s
    input text  name:pass  ${password}
    sleep  1s
    click button  xpath:/html/body/div/div/div[2]/form/center/button
    sleep  3s

User Login test
    [Documentation]  Login page
    [Tags]  user
    input text  name:email  ${email}
    sleep  1s
    input text  name:pass  ${password}
    sleep  1s
    click button  xpath:/html/body/div/div/div[2]/form/center/button
    sleep  3s

Admin login test
    [Documentation]  Login page
    [Tags]  admin
    input text  name:uname  ${username}
    sleep  1s
    input password  name:pass  ${password}
    sleep  1s
    click button  xpath:/html/body/div/div/div[2]/form/center/button
    sleep   3s

AddBook Admin test
    [Documentation]  Addbook page
    [Tags]  admin
    input text  name:name  Evil death
    sleep  1s
    input text  name:auth  James Cameron
    sleep  1s
    input text  name:cat  Horror
    sleep  1s
    input text  name:price  2000
    sleep  1s
    input text  name:pub  Simon
    sleep  1s
    click button  xpath:/html/body/div[2]/div/div[2]/form/center/button
    sleep  2s
    click button  xpath:/html/body/div[2]/div/div[2]/form/div/div/div/div/button[3]
    sleep  4s

Search Book test
    [Documentation]  Search page
    [Tags]  user
    click link  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[4]/a
    sleep  1s
    input text  name:name  Evil death
    sleep  1s
    click button  xpath:/html/body/div[2]/div/div[2]/form/center/button
    sleep  3s

ViewBook Admin test
    [Documentation]  ViewBook page
    [Tags]  admin
    click link  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[2]/a
    sleep  4s

Update Book test
    [Documentation]  Updatebook page
    [Tags]  admin
    click link  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    input text  name:name  Evil death
    sleep  1s
    click button  xpath:/html/body/div[2]/div/div[2]/form/center/button
    sleep  3s
    click link  xpath:/html/body/div[3]/div/div/table/tbody/tr/td[6]/a
    sleep  3s
    input text  name:name  The End
    sleep  1s
    input text  name:auth  Nelson
    sleep  1s
    input text  name:cat  Horror
    sleep  1s
    input text  name:price  3000
    sleep  1s
    input text  name:pub  Vijay
    sleep  1s
    click button  xpath:/html/body/div[2]/div/form/center/button
    sleep  2s
    click button  xpath:/html/body/div[2]/div/form/div/div/div/button[2]
    sleep  4s

Delete Admin test
    [Documentation]  Deletebook page
    [Tags]  admin
    click link  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[5]/a
    sleep  1s
    input text  name:name  Conjuring
    sleep  1s
    click button  xpath:/html/body/div[2]/div/div[2]/form/center/button
    sleep  2s
    click button  xpath:/html/body/div[2]/div/div[2]/form/div/div/div/div/button[3]
    sleep  4s

Logout test
    [Documentation]  Logout page
    [Tags]  user
    click Element  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[6]/a
    sleep  3s
    close browser

*** Keywords ***