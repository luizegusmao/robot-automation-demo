*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                 http://automationpractice.com
${Browser}             chrome
${Title}               My Store
${TitleSubCategoria}   Summer Dresses - My Store
${InputSearch}         id=search_query_top
${ButtonPesquisa}      name=submit_search 
${Image}               css=a.product_img_link

Fechar navegador
    Close Browser

Dado que o usuário acessou a página home do site  
    Open Browser  ${URL}  ${Browser}
    Title Should Be  ${Title} 

Quando o usuário passar o mouse por cima da categoria "${Categoria}" no menu principal superior de categorias
    
    Mouse Over  xpath://*[@id="block_top_menu"]//a[@title="${Categoria}"]


E clicar na sub categoria "${LinkSummer}"  
    Click Link  link=${LinkSummer}
    
Então o sistema deve exibir a categoria "Summer Dresses"     
    Title Should Be  ${TitleSubCategoria} 
    Page Should Contain  ${TitleSubCategoria}  

Quando o usuário digitar o nome de produto "${campoProduto}" no campo de pesquisa
    Input Text  ${InputSearch}  ${campoProduto}

E clicar no botão de pesquisa     
    Click Button  ${ButtonPesquisa}

E clicar no botão "${ButtonAdd}" do produto 
    Sleep  4 
    Mouse Over  ${Image}
    Click Element  css:a[title="${ButtonAdd}"]