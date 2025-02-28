#
# Test asset originally created using Copado QEditor.
#

*** Settings ***
Library                     QForce
Library                     Screenshot
Resource                    TestCase/Login.robot
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown              Close All Browsers

*** Test Cases ***

SampleGitHub
    [Documentation]         Test Case created using the QEditor
    Login to Application
    ClickText               Cases List
    ClickText               New Case
    UseModal                On
