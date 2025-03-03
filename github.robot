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
Create Cases

    Login to Application
    ClickText    Cases List
    ClickText    New Case
    UseModal    On
    ClickText    CCC Angola
    ClickText    Next
    UseModal    Off
    TypeText    Subject    Sales

*** Test Cases ***
Edit Cases
    ClickText    Cases List
    ClickText    C-0026275776
    ClickText    Edit Case Origin
    PickList    Case Origin    Client Email
    ClickText    Save


 
   
    


    
    
