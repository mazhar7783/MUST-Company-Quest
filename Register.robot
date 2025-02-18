*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      gc
${url}          https://dev.p2u.kr/

*** Test Cases ***
Open my google chrome
    ${gc}=  open browser        ${url}      ${browser}
    maximize browser window
    click element   xpath:/html/body/div[2]/div[1]/header/div/div[1]/div/div[2]/ul/li[1]/a
    click element   xpath://*[@id="loginTab"]/form/div[3]/div[1]/div[1]/div/a
    select checkbox    id:agree_all
    scroll element into view    id:register-submit-one
    wait until element is visible      id:register-submit-one
    click element    id:register-submit-one
    click element    xpath://*[@id="reg_mb_id"]
    input text    xpath://*[@id="reg_mb_id"]      mazhar786
    click element   xpath:/html/body/div[2]/div[1]/div[3]/div/div/section/div/form/div/fieldset[1]/div[1]/section/label[2]/button
    sleep    5
    click element    class:confirm
    input text    id:reg_mb_password    abc@123456
    input text    id:reg_mb_password_re     abc@123456
    scroll element into view    id:reg_mb_hp
    input text    id:reg_mb_name    Mazhar Hussain Farooqi
    input text    id:reg_mb_nick    Mazhar
    click element    xpath:/html/body/div[2]/div[1]/div[3]/div/div/section/div/form/div/fieldset[2]/div[2]/section/label[2]/button
    sleep   5
    click element    class:confirm
    input text    id:reg_mb_email   mazharalpha1@gmail.com
    click element    class:special-2
    sleep    3
    click element    class:confirm
    input text    id:reg_mb_hp      009223336866546
    scroll element into view    id:btn_submit
    input text    id:reg_mb_zip     54800
    input text    id:reg_mb_addr1   Green Town Lahore, Pakistan
input("Solve the CAPTCHA and press Enter to continue...")
    click element       id:btn_submit
    sleep   10