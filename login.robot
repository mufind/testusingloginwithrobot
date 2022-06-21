*** Settings ***
Library    SeleniumLibrary
Test Setup         Open Browser        ${base_url}     ${base_type}   
Test Teardown      Close Browser

*** Variables ***
${base_url}     https://pub-eish-dev.keponet.com/frontend/login
${base_type}    gc

*** Test Cases ***
I login with valid email and valid password
    Maximize Browser Window
    Input Text      //input[@id="email"]       jenareishsatu@yopmail.com
    Input Text      //input[@id="password"]       12345678
    Click Element   //button[@type="submit"]
    Element Should Be Visible   //img[@id="menu-logo"]

I login with valid email and unvalid password
    Maximize Browser Window
    Input Text      //input[@id="email"]       jenareishsatu@yopmail.com
    Input Text      //input[@id="password"]       1234567801
    Click Element   //button[@type="submit"]
    Element Should Be Visible   //div[@class="alert alert-danger text-danger"]

I login with unvalid email and valid password
    Maximize Browser Window
    Input Text      //input[@id="email"]       fadhil@yopmail.com
    Input Text      //input[@id="password"]       12345678
    Click Element   //button[@type="submit"]
    Element Should Be Visible   //img[@id="main-logo"]
