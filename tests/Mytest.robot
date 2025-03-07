
*** Settings ***
Library                     QForce

Library                     Screenshot
Library                     SeleniumLibrary
Resource                    ../Resources/Common.resource
Suite Setup                 OpenBrowser                 about:blank    chrome
Suite Teardown              CloseAllBrowsers

*** Test Cases ***
Create 

    Login to Application
    ClickText               Cases List
    ClickText               New Case
    UseModal                On
    ClickText               CCC Angola
    ClickText               Next
    UseModal                Off
    TypeText                Subject                     Sales
    CloseBrowser




