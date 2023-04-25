* Settings *
Documentation           Arquivo com cenários da funcionalidade de cadastro

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases * 



Cadastrar conta com campo CPF em branco
   [Tags]  cadastrar   all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   #Swipe down para clicar no botão cadastrar
   #Clicar mo botao cadastrar
   Validar mensagem de insira seu CPF  Insira seu CPF. 

Cadastrar conta com campo Nome em branco
   [Tags]  cadastrar   all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Validar mensagem de insira seu Nome  Insira seu nome.

Cadastrar conta com apenas o primeiro nome
   [Tags]  cadastrar  all   fail
   ${user}     Factory User    cadastrar3
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Validar mensagem de insira seu Nome  Insira seu nome.

Cadastrar conta com 2 nomes e uma letra e acentuacao
   [Tags]  cadastrar10    Fail
   ${user}     Factory User    cadastrar1
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Validar mensagem de insira seu Nome  Insira seu nome.

Cadastrar conta com campo email em branco
   [Tags]  cadastrar      all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   #Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Validar mensagem de insira seu email  Insira seu e-mail.

Cadastrar conta com campo celular em branco
   [Tags]  cadastrar1      all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   #Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Validar mensagem de insira seu numero  Insira seu número de celular. 

Cadastrar conta com campo data de nascimento em branco 
   [Tags]  cadastrar     all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   #Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Validar mensagem de insira sua dara de nascimento  Insira sua data de nascimento.

Cadastrar conta com campo senha em branco
   [Tags]  cadastrar      all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   #Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Validar mensagem de insira sua senha  Insira a senha.

Cadastrar conta sem declarar politica de privacidade
   [Tags]  cadastrar       all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   #Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Swipe down
   Validar mensagem aceitar termos de privacidade  Para continuar, você deve aceitar a política de privacidade.

Cadastrar conta sem declarar termos de uso
   [Tags]  cadastrar   Fail
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   #Preencher campo criar senha                ${user}
   Swipe down
   Clicar mo botao cadastrar
   Swipe down
   Validar mensagem aceitar termos de uso  Para continuar, você deve aceitar os termos de uso


Cadastrar conta com dados validos 
   #Falta massa para realizar teste de cadastro
   [Tags]  cadastrar       all
   ${user}     Factory User    cadastrar
   Clicar no botao cadastrese
   Preencher campo insira CPF                 ${user}
   Preencher campo nome                       ${user}
   Preencher campo insira email               ${user}
   Preencher campo insira celular             ${user}
   Preencher campo insira Data nascimento     ${user}
   Preencher campo criar senha                ${user}
   Swipe down
   Declarar termos de uso e privacidade
   Clicar mo botao cadastrar





   
 