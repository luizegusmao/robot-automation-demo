*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}           https://www.google.com.br/
${Browser}       chrome
${Title}         Google
${InputSearch}   name=q
${Form}          id=tsf

*** Keywords ***
Fechar navegador
  Close Browser

Dado que o usuário acessou o buscador
  Open Browser  ${URL}  ${Browser}
  Title Should Be  ${Title}

Quando digitar "${campoPesquisar}" no campo de pesquisa
  Input Text  ${InputSearch}  ${campoPesquisar}

E clicar no botão pesquisar 
  Submit Form  ${Form}

Então o buscador exibe o resultado da pesquisa "${ResultSearch}"
  Title Should Be  ${ResultSearch} 
  