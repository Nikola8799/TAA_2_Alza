*** Settings ***
Library   SeleniumLibrary
Test Setup    Open Browser   https://www.alza.sk/EN/   gc
Test Teardown    Close Browser

***Variables***


*** Test Cases ***
Adding a specific item via available category filters
     Set Window Size    1850    1000
     Click Element    xpath=//*[@id="rootHtml"]/body/div[6]/div/div/div[2]/a[1]
     Click Element    xpath=//*[@id="litp18890188"]/a
     Click Element    xpath=//*[@id="left"]/div[2]/div[1]/a[1]
     Click Element    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[3]
     Click Element    xpath=//*[@id="content0"]/div[1]/div[2]/div[3]/div/div[1]/a[8]
     Click Element    xpath=//*[@id="ui-id-3"]
     Wait Until Element Is Visible    xpath=//*[@id="besti"]/div[3]/div/a
     Click Element    xpath=//*[@id="besti"]/div[3]/div/a
     Wait Until Element Is Visible    xpath=//*[@id="h1c"]/h1
     ${3_produkt}    Get Text    xpath=//*[@id="h1c"]/h1
     Click Element    xpath=//*[@id="cpcm_cpc_tdAmount"]/span/div[1]/div/a/span[2]
     ${count}        Get Text    xpath=//*[@id="basketLink"]/span[2]
     ${price}        Get Text    xpath=//*[@id="price"]
     Should Be Equal    ${3_produkt}     Lenovo V15 G2 ITL
     Should Be Equal    ${count}    1
     Should Be Equal    ${price}    449 €
     Sleep    5
     Click Element    xpath=//*[@id="varBToBasketButton"]/span
     Go To    https://www.alza.sk/EN/Order1.htm
     Sleep    5
     Click Element    xpath=//*[@id="blockBtnRight"]/a/span[1]
     Click Element    xpath=//*[@id="blockBtnRight"]/a/span[1]
     Select Checkbox    xpath=/html/body/div[2]/div/div/div[3]/div[4]/div/div[2]/div[1]/div[2]/div[1]/div/div/div/div[2]
     Click Element    xpath=//*[@id="personalCentralDialog"]/div[2]/a[2]
     Select Checkbox    xpath=/html/body/div[2]/div/div/div[3]/div[4]/div/div[2]/div[1]/div[2]/div[2]/div/div[1]/div/div[1]
     Click Element    xpath=//*[@id="confirmOrder2Button"]
     Go To    https://www.alza.sk/EN/Order3.htm
     
## hkfkshk,