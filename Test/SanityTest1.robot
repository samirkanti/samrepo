***Settings***
Library  SeleniumLibrary


*** Test Cases ***
MyFirstTest
    Log  Hello World...
    Log  Saurabh Basu!!...
   

*** Test Cases ***
MyFirstSeleniumTest
    Open Browser    https://www.google.com    chrome
    Set Browser Implicit Wait    3s
    Maximize Browser Window
    Input Text    name=q    Python Automation
    #Click Element    name=btnK 
    Press Keys    name=q     ENTER
    Sleep     3s
    #Click Button    name=btnK         
    Sleep    30s    
    Capture Page Screenshot    C:\Selenium\workspace\RobotProject1\Img1.png
    Log  Hello Preeta
    Close Browser
    
    
    

    
    
    