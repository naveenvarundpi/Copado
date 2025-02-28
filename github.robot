#
# Test asset originally created using Copado QEditor.
#

*** Settings ***
Library                     QForce
Library                      QWeb
Library                     Screenshot
Resource                    TestCase/Login.robot
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown              Close All Browsers

*** Test Cases ***
Create Contacts

    Login to Application
    ClickText    Contacts List
    ClickText    Cases List
    ClickText    New Case
    UseModal    On
    ClickText    CCC Angola
    ClickText    Next
    UseModal    Off
    TypeText    Subject    Sales


 
   
    

