*** Settings ***
Library      Selenium2Library

*** Variables ***
${BROWSER}      chrome
${LINK}         https://dou.ua/forums/topic/13389/

*** Test Cases ***
start test job
	Open and Navigate Browser
	heck first title
	End test

*** Keywords ***
Open and Navigate Browser
    OPEN BROWSER        ${BROWSER}      ${LINK}

Check first title
    element should contain      xpath=//h1      Тестирование. Фундаментальная теория

End test
    CLOSE BROWSER