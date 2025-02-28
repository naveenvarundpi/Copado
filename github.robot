#
# Test asset originally created using Copado QEditor.
#

*** Settings ***
Library                 QForce 
Library     Screenshot
Suite Setup             Open Browser    about:blank    chrome
Resource     TestCase/Login.robot
Suite Teardown          Close All Browsers

*** Test Cases ***

SampleGitHub
    [Documentation]    Test Case created using the QEditor
    Login to Application
    ClickText    Cases     delay=5
    ClickText    New
    UseModal    On
