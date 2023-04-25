* Settings *
Documentation           Arquivo com cenários da funcionalidade de home cards 

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases * 



validar saldo em conta
    [Tags]  homecards   all
    ${user}     Factory User    usuario_valido
        Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    Usuario deve estar logado  ${user}
    clicar icone do olho
    validar saldo disponivel  0,00

validar botão alterar senha do cartão 
    [Tags]  homecards   Fail
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em alterar senha 
    Validar formulario de alterar senha    ALTERAR SENHA

validar botão bloquear conta 
    [Tags]  homecards   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em bloquear conta
    Validar pop up de bloqueio  Cartão com bloqueio inicial. Assim que você receber este cartão, retorne aqui para desbloquear.

validar botão esqueci senha do cartão 
    [Tags]  homecards   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar botão esqueci senha
    Validar formulario de esqueci senha    ESQUECI A SENHA

validar ver meu extrato
    [Tags]  homecards  all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar botão ver meu extrato
    Validar extrato          EXTRATO

Validar botão cartão bloqueado
    [Tags]  homecards  all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em bloquear conta
    Validar cartão bloqueado  Desbloquear

Validar botão cartão desbloquear cartão 
    [Tags]  homecards  all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
    Preencher campos de login  ${user}
    Clicar no botao login
    Aceitar os cookies
    Decidir depois mensagens
    #Decidir depois localização
    clicar icone do olho
    clicar em bloquear conta 
    clicar em desbloquear cartão
    validar formulario de desbloquear conta     ALTERAR SENHA
