*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
    
SampleTest
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    3s
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Sleep    2s
    Input Text    id=txtPassword   admin123
    Sleep    2s
    Click Button    id=btnLogin
    Sleep    2s
    Click Element    id=welcome    
    Sleep    2s
    #Click Element    xpath=//a[text='Logout']   
    Click Element    link=Logout
    Sleep    2s     
    Log    Test Has Been Completed
    Close Browser       
    