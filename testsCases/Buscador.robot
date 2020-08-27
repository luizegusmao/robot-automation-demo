*** Settings ***
Resource  ../resources/resource.robot
Test Teardown  Fechar navegador

*** Test Case ***
Caso de teste 01: Validar busca de pesquisa
    Dado que o usuário acessou o buscador
    Quando digitar "teste de software" no campo de pesquisa
    E clicar no botão pesquisar
    Então o buscador exibe o resultado da pesquisa "teste de software - Pesquisa Google"