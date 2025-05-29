*** Settings ***
Library    SeleniumLibrary
Library    String
Resource   ../resources/resource.resource
Resource    ../fixtures/environments/serverest.yaml
Resource    ../fixtures/elements/login.yaml

*** Keywords ***
abrir navegador 
    Open Browser    browser=headlesschrome
   Maximize Browser Window

fechar navegador 
   Close Browser 


Passo 1 - acessar a página de login
  Go to    url=${Serverest.Url}${Serverest.Endpoint_Login}


Passo 2 - clicar em cadastra-se
   Wait Until Element Is Visible    locator=${buttoncadastratar}
   Click Element                    locator=${buttoncadastratar}


   
Passo 3 - digitar um nome
  Wait Until Element Is Visible    locator=${nomeInput}
  Input Text                       locator=${nomeInput}    text=Sami Lily
  
    ${palavra_randomica}      Generate Random String     8    chars=[LETTERS]
    ${palavra_randomica}     Convert To Lower Case     ${palavra_randomica}
    Set Test Variable        ${EMAIL_TEST}             ${palavra_randomica}@hotmail.com
    Log                      ${EMAIL_TEST}
Passo 4 - digitar email
  Wait Until Element Is Visible    locator=${emailInput}
  Input Text                       locator=${emailInput}   text=${EMAIL_TEST}                           

Passo 5 - digitar senha 
    Wait Until Element Is Visible    locator=${senhaInut} 
    Input Password                   locator=${senhaInut}    password=123LILy@

Passo 6 - escolher perfil admin
  Wait Until Element Is Visible       locator=${selectbox}
  Select Checkbox                     locator=${selectbox}
  
  
Passo 7 - clicar em cadastra-se
  Wait Until Element Is Visible        locator=${cadastrase}
  Click Button                         locator=${cadastrase}