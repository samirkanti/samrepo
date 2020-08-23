*** Settings ***
Library    SeleniumLibrary    
Suite Setup     Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
Suite Teardown    Close Browser
Test Setup    Log    Hello
Test Teardown    Log    Bye

*** Variables ***
#SCALAR VARIABLE
${UserName}    Admin
${Password}    admin123
#LIST VARIABLE
@{Credential}    Admin    admin123
#DICTIONARY
&{LoginData}    Username=Admin    Password=admin123

*** Keywords ***
Login
    Input Text    id=txtUsername    &{LoginData}[Username]
    Input Text    id=txtPassword    &{LoginData}[Password]
    Click Button    id=btnLogin
    
    
*** Test Case ***
SampleTest2
    [Tags]    Smoke
    #Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    3s
    Maximize Browser Window
    Input Text    id=txtUsername    @{Credential}[0]
    Sleep    2s
    Input Text    id=txtPassword    @{Credential}[1]
    Sleep    2s
    Click Button    id=btnLogin
    Sleep    2s
    Click Element    id=welcome
    Sleep    2s
    #Click Element    xpath=//a[text='Logout']
    Click Element    link=Logout
    Sleep    2s
    Log    First Test Has Been Completed


*** Test Cases ***
 SampleTest4
     [Tags]    Sanity
    #Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    3s
    Maximize Browser Window
    Login
    Sleep    2s
    Click Element    id=welcome
    Sleep    2s
    #Click Element    xpath=//a[text='Logout']
    Capture Page Screenshot    C:\Selenium\workspace\RobotProject1\Img2.png
    Click Element    link=Logout
    Sleep    2s
    Log   Second Test Has Been Completed by %{username} on %{os}
    #Close Browser
