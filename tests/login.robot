* Settings *
Documentation           Arquivo com cenários da funcionalidade de Login

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases *



# Cenario de exemplo utilizando massa dinâmica com faker
Fazer login com dados faker
    [Tags]  login1   Fail
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_faker
    Log To Console  ${user}  
    Preencher campos de login  ${user}
    Clicar no botao login
    Validar mensagem de CPF não cadastrado   OK



Fazer login com dados válidos
    [Tags]  login    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    cadastrar dispositivo      ${user} 
    Usuario deve estar logado  ${user}
    

Fazer login com dados invalidos
    [Tags]  login   all
    ${user}     Factory User      usuario_invalido
    
    # Dado
    Preencher campos de login  ${user}
    # Quando
    Clicar no botao login
    # Então
    Validar mensagem de erro do login  CPF inválido.

Fazer login com campos em branco
    [tags]  login    all
    Clicar no botao login
    Validar mensagem de erro do login  Insira seu CPF

Fazer login com campo CPF em branco 
    [tags]  login    all
    ${user}     Factory User    usuario_valido
    Preencher campo de senha  ${user}
    Clicar no botao login
    Validar se foi feito o login     Insira seu CPF e senha para entrar

Fazer login com campo senha em branco 
    [tags]  login    all
    ${user}     Factory User    usuario_valido
    Preencher campo de CPF      ${user}
    Clicar no botao login
    Validar se foi feito o login     Insira seu CPF e senha para entrar

    
Swipe 2
    # Remover antes de entregar ao cliente
    [Tags]  swipe   all
    ${visible}=  Run Keyword And Return Status    Element Text Should Be    ${banner}   ECONOMIZAR SEMPRE
    Log To Console  ${visible}
    WHILE  ${visible} == False
        # Swipe	900	200	100	200	500
        Swipe By Percent	90	20	10	20
        ${visible}=  Run Keyword And Return Status    Element Text Should Be    ${banner}   ECONOMIZAR SEMPRE
        # BREAK
    END
