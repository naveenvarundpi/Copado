*** Settings ***
Library                QForce
Suite Setup            Open Browser                about:blank                 chrome
    
*** Test Cases ***
Login to Application
    [Documentation]   Test Case for login
    GoTo              https://standardbank--sit.sandbox.lightning.force.com/lightning
    TypeText          Username          hari.radhakrishnan@standardbank.co.za.bcwsit
    TypeSecret        Password          Sud682keen739!
    
    ClickText          Log In to Sandbox


