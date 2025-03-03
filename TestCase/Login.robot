*** Settings ***
Library                QForce
Suite Setup            Open Browser                about:blank                 chrome

*** Variables ***
${Login_Button}        xpath=//input[@value='Log In to Sandbox']
    
*** Keywords ***
Login to Application
    [Documentation]   Test Case for login
    Open Browser                about:blank                 chrome
    GoTo              https://standardbank--bcwuat.sandbox.lightning.force.com/lightning
    TypeText          Username          hari.radhakrishnan@standardbank.co.za.bcwuat
    TypeSecret        Password          Sud682keen739!
    ClickText          ${Login_Button}



    
