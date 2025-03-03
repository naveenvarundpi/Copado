#
# Test asset originally created using Copado QEditor.
#

*** Settings ***
Library                     QForce

Library                     Screenshot
Library    SeleniumLibrary
Resource                    TestCase/Login.robot
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown              Close All Browsers
*** Variables ***
${Case_Number}
*** Test Cases ***
#Create Cases

    #Login to Application
    #ClickText    Cases List
    #ClickText    New Case
    #UseModal    On
    #ClickText    CCC Angola
    #ClickText    Next
    #UseModal    Off
    #TypeText    Subject    Sales
    #CloseBrowser

*** Test Cases ***
Edit Cases
    Login to Application
    ClickText    Cases List
    ClickText    C-0026275776
    ClickText    Edit Case Origin
    PickList    Case Origin    Client Email
    ClickText    Save
    #VerifyField    Case Number    C-0026275776    partial_match=True
    ${Case_Num}=          GetText      Case Number
    Log                      ${Case_Num}
    CloseBrowser

*** Test Cases ***
Search Cases
    Login to Application
    ClickText    Cases    anchor=Home
    #ClickText    Cases List
    TypeText    Search this list...    ${Case_Number}
    ClickText    Show Actions
    ClickText    Edit
    UseModal    On
    TypeText    Account Number    6574358979
    HoverText    Save
    ClickText    Save    partial_match=False
    UseModal    Off
    

    
    


 
   
    


    
    
