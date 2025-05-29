*** Settings ***
Resource   ../resources/resource.resource

*** Keywords ***
Open Web
    Open Browser    browser=headlesschrome
    Maximize Browser Window
Close Web    
    Close Browser 