* Settings *
Documentation           Arquivo com cenários da funcionalidade de tranferencia de saldo

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases *


Validar transferência de saldo entre Refeição e Alimentação com sucesso
    [Tags]  transferir   all1
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    bloquear
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     Decidir depois localização
     #cadastrar dispositivo
     clicar icone do olho
     clicar em botao tranferir saldo 
     informar valor que deseja tranferir do Ref    ${user}[tranferirRef]
     clicar em salvar
     validar mensagem de tranferencia feita com sucesso             A atualização do seu saldo pode demorar alguns minutos    

Validar transferência de saldo entre Alimentação e Refeição com sucesso
    [Tags]  transferir     Fail
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    bloquear
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     Decidir depois localização
     #cadastrar dispositivo
     clicar icone do olho
     clicar em botao tranferir saldo 
     informar valor que deseja tranferir do Ali    ${user}[tranferirAli]
     clicar em salvar
     validar mensagem de tranferencia feita com sucesso             A atualização do seu saldo pode demorar alguns minutos


Validar transferência de saldo com valor que excede o limite entre Refeição e Alimentação
    [Tags]  transferir   all1
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    bloquear
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     Decidir depois localização
     #cadastrar dispositivo
     clicar icone do olho
     clicar em botao tranferir saldo 
     informar valor que deseja tranferir do Ref    ${user}[tranferirRefMax]
     clicar em salvar
     validar mensagem de tranferencia feita com sucesso             A atualização do seu saldo pode demorar alguns minutos 
    
Validar Transferência de saldo com o valor que excede o limite entre Alimentação e Refeição
    [Tags]  transferir   all1
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    bloquear
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     Decidir depois localização
     #cadastrar dispositivo
     clicar icone do olho
     clicar em botao tranferir saldo 
     informar valor que deseja tranferir do Ali    ${user}[tranferirAliMax]
     clicar em salvar
     validar mensagem de tranferencia feita com sucesso             A atualização do seu saldo pode demorar alguns minutos 

Validar transferência de saldo Alimentação e Refeição sendo valor 0
    [Tags]  transferir   all1
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    bloquear
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     Decidir depois localização
     #cadastrar dispositivo
     clicar icone do olho
     clicar em botao tranferir saldo 
     informar valor que deseja tranferir do Ali    ${user}[tranferirAliMin]
     clicar em salvar
     validar mensagem de tranferencia feita com sucesso             A atualização do seu saldo pode demorar alguns minutos

Validar transferência de saldo Refeição e Alimentação sendo valor 0
    [Tags]  transferir   all1
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    bloquear
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     Decidir depois localização
     #cadastrar dispositivo
     clicar icone do olho
     clicar em botao tranferir saldo 
     informar valor que deseja tranferir do Ref    ${user}[tranferirRefMin]
     clicar em salvar
     validar mensagem de tranferencia feita com sucesso             A atualização do seu saldo pode demorar alguns minutos
           