*** Settings ***
Library   SeleniumLibrary
Test Setup    Open Browser   https://www.google.com   gc
#Test Teardown    Close Browser

*** Test Cases ***
Google vyhladavanie krok 2
    Click Element     xpath=//*[@id="L2AGLb"]
    Input text       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   Apple
    Click Element    xpath=/html/body/div[1]/div[3]
    Sleep    1
    Click Element   xpath=//input[@name="btnK"]
    Sleep    1
    Close Browser
Google krok 3
     Click Element     xpath=//*[@id="L2AGLb"]
     Input text       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    what is an Apple
     Click Element    xpath=/html/body/div[1]/div[3]
     Click Element   xpath=(//input[@class="gNO89b"]) [2] | (//input
     Close Browser

Google krok 4
     Click Element     xpath=//*[@id="L2AGLb"]
     Input text       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   what is an Apple
     Click Element    xpath=/html/body/div[1]/div[3]/form/div[1]
     Press Keys    none      ENTER
     Close Browser

Google krok 5
     Click Element     xpath=//*[@id="L2AGLb"]
     Input text       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   Johny Johny yes papa, eating sugar no papa, telling lies no papa, open your mouth hahaha
     Click Element    xpath=/html/body/div[1]/div[3]/form/div[1]
     Press Keys     none      ENTER
     Get Length    xpath=//*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input

Google_krok_6
     Click Element     xpath=//*[@id="L2AGLb"]
     Input text       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   878567rugbiuhlihgkuctytze5tesy6jum
     Click Element    xpath=/html/body/div[1]/div[3]/form/div[1]
     Press Keys     none      ENTER
     Page Should Contain    Návrhy:

