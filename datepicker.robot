*** Settings ***
Library    SeleniumLibrary
Suite Setup         Open Browser        ${base_url}     ${base_type}   
Suite Teardown      Close Browser

*** Variables ***
${base_url}     https://pub-eish-dev.keponet.com/frontend/register
${base_type}    gc

*** Test Cases ***
I inputtan
    Maximize Browser Window
    Input Text      //input[@id="tanggal_lahir"]       01/01/2000     
  