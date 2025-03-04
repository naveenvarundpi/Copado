*** Settings ***

Documentation               New test suite
# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library                     QForce
Suite Setup                 Open Browser                about:blank                 chrome
Suite Teardown              Close All Browsers


*** Variables ***
${cases}                    xpath=//a[@title='Cases']
${create_New_Contact_Chkbox}                            xpath=(//span[text()='Create New Contact']//preceding::span[contains(@class,'checkbox')])[last()]
*** Keywords ***
Login to Application
*** Test Cases ***


Learningsa
    [Documentation]         Test Case created using the QEditor
  

    # GoTo                    https://standardbank--bcwuat.sandbox.lightning.force.com/lightning
    # TypeText                Username                    hari.radhakrishnan@standardbank.co.za.bcwuat
    # TypeSecret              Password                    Sud682keen739!
    # ClickText               Log In to Sandbox
    HoverText               ${cases}
    ClickText               ${cases}
    ClickText               New
    UseModal                On
    HoverText               Production Incident
    ClickText               Next
    UseModal                Off
    ClickElement            ${create_New_Contact_Chkbox}
    # ClickCheckbox          Create New Contact    
    DropDown                Title                       ${Title}
    TypeText                First Name                  ${First Name}
    TypeText                Last Name                   ${Last Name}
    TypeText                you@example.com             ${Email}
    TypeText                Phone                       ${Phone}
    ComboBox                Search Clients...           ${Search Clients}
    TypeText                Subject                     ${Subject}
    ScrollText              Finish
    TypeText                Case Description            testing
    ClickText               Finish






