***Settings***
Library    SeleniumLibrary    


*** Variables ***
#SCALAR VARIABLE
${UserName}    Admin
${Password}    admin123

#LIST VARIABLE
@{Credential}    Admin    admin123

#DICTIONARY
&{LoginData}    Username=Admin    Password=admin123    Url=https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
SampleTest1
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    3s
    Maximize Browser Window
    Input Text    id=txtUsername    ${UserName}
    Sleep    2s
    Input Text    id=txtPassword   ${Password}
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
    
        
SampleTest2
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
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
    Click Element    link=Logout
    Sleep    2s     
    Log    Test Has Been Completed
    Close Browser   
    
    
 SampleTest3
    Open Browser    &{LoginData}[Url]    chrome
    Set Browser Implicit Wait    3s
    Maximize Browser Window
    Input Text    id=txtUsername    &{LoginData}[Username]
    Sleep    2s
    Input Text    id=txtPassword    &{LoginData}[Password]
    Sleep    2s
    Click Button    id=btnLogin
    Sleep    2s
    Click Element    id=welcome    
    Sleep    2s
    #Click Element    xpath=//a[text='Logout']   
    Click Element    link=Logout
    Sleep    2s     
    Log    This Test Has Been Completed by %{username} on %{os}
    Close Browser   