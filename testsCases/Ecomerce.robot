*** Settings ***
Resource  ../resources/resourceEcomerce.robot
Test Teardown  Fechar navegador

*** Test Cases ***
#Caso de teste 01: Listar produtos
    #Dado que o usuário acessou a página home do site
    #Quando o usuário passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    #E clicar na sub categoria "Summer Dresses"
    #Então o sistema deve exibir a categoria "Summer Dresses"

Caso de teste 02: Adicionar produtos no carrinho
    Dado que o usuário acessou a página home do site   
    Quando o usuário digitar o nome de produto "t-shirt" no campo de pesquisa
    E clicar no botão de pesquisa
    E clicar no botão "Add to cart" do produto
    #E clicar no botão "Proceed to checkout"
    #Então o sistema deve exibir a tela do carrinho de compras 
    #E deve ser exibir os dados do produto adicionado 
    #E os devidos valores 

#Caso de teste 03: Remover produtos
    #Dado que o usuário acessou a página home do site   
    #Quando clicar no ícone carrinho de compras no menu superior direito
    #E clicar no botão de remoção de produtos no produto do carrinho  
    #Então o sistema deve exibir a mensagem "Your shopping cart is empty."

#Caso de teste 04: Adicionar cliente
    #Dado que o usuário acessou a página home do site 
    #Quando o usuário clicar no botão superior direito “Sign in”
    #E inserir um e-mail válido no campo
    #E clicar no botão "Create na account"
    #E preencher os campos obrigatórios
    #E clicar em "Register"para finalizar o cadastro
    #Então a página de gerenciamento da conta deve ser exibida     
  