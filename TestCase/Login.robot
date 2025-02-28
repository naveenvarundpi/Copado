*** Settings ***
Library                QForce
Suite Setup            Open Browser                about:blank                 chrome
    
*** Keywords ***
Login to Application
    [Documentation]   Test Case for login
    GoTo              https://standardbank--bcwuat.sandbox.lightning.force.com/lightning
    TypeText          Username          hari.radhakrishnan@standardbank.co.za.bcwuat
    TypeSecret        Password          Sud682keen739!
    
    ClickText          Log In to Sandbox


