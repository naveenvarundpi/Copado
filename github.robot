#
# Test asset originally created using Copado QEditor.
#

*** Settings ***
Library                 QForce 
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

*** Test Cases ***

SampleGitHub
    [Documentation]    Test Case created using the QEditor

     GoTo    https://standardbank--bcwuat.sandbox.lightning.force.com/lightning
    TypeText    Username    hari.radhakrishnan@standardbank.co.za.bcwuat
    TypeSecret    Password    Sud682keen739!
    ClickText    Log In to Sandbox
    LaunchApp    Cases
    ClickText    Cases
    ClickText    New
