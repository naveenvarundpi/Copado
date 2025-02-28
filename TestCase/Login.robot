*** Settings ***
Library                QForce
Suite Setup            Open Browser                about:blank                 chrome
    
*** Keywords ***
Login to Application
    [Documentation]   Test Case for login
    GoTo               https://standardbankgroup.my.salesforce.com/ 
    TypeText          Username          hari.radhakrishnan@standardbank.co.za.bcwsit
    TypeSecret        Password          Sud682keen739!
    
    ClickText          Log In to Sandbox
*** Test Cases ***

Login
    [Documentation]    Test Case created using the QEditor


