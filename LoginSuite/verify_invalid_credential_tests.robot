*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary  


*** Test Cases ***
Verify_Valid_Credential_Test
    [Tags]    OP-107
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    browser=chrome
    Maximize Browser Window   
    Set Selenium Implicit Wait    30s
    Input Text    xpath=//input[@id='authUser']    admin112    
    Input Password    id=clearPass    pass    
    Select From List By Label    name=languageChoice    English (Indian)    
    Click Element    xpath=//button[@type='submit'] 