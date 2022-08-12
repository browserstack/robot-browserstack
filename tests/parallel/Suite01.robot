*** Settings ***
Library    SeleniumLibrary
Library     Collections
Library    ../../config/Config.py
Resource   ../../config/KeywordsFile.robot
Resource    ../testcases.robot
Test Setup    Execute test
Test Teardown    Close Session

*** Variables ***
${website_url}=    https://bstackdemo.com
${browser}=    chrome

*** Keywords ***
Execute test
    ${final_caps}=    combine caps    0
    Set to Dictionary    ${final_caps}    name=BStack Demo - ${TEST NAME}
    Open Session    ${final_caps}    ${browser}    ${website_url}


*** Test Cases ***
Login Test
    Login

Add to Cart Test
    Add to Cart
