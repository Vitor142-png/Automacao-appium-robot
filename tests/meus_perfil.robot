* Settings *
Documentation           Arquivo com cenários da funcionalidade de Meu Perfil

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases *


Validar botão de meu perfil 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     clicar icone do olho
     Clicar em meu perfil 
     Valido tela de meu perfil      MEU PERFIL  


Validar alteração de nome em dados pessoais 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar nome em seus dados
     clicar em salvar
     Validar alteração de nome com sucesso   Vitor hugo

Validar mensagem de erro ao tentar colocar numero no campo nome em dados pessoais 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar nome com numero em meus dados
     clicar em salvar
     Validar mensagem de erro no campo nome     Nome inválido.

Validar mensagem de erro ao tentar colocar apenas o primeiro nome no campo nome em dados pessoais 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar nome com apenas o primeiro nome
     clicar em salvar
     Validar mensagem de erro no campo nome     Insira seu nome.

Validar alteração de celular em dados pessoais 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar celular em seus dados
     clicar em salvar
     Clicar em ver dados pessois
     Validar alteração de celular   11 94002-8922

Validar alteração de celular com numero com menos de 11 digitos em meus dados 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar celular com numero com menos de 11 digitos em meus dados
     clicar em salvar
     Validar mensagem de erro campo celular   Celular inválido.

Validar alteração de email em dados pessoais 
    [Tags]  meuperfil1   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar email em seus dados
     clicar em salvar
     Validar mensagem de alteração de email     Abra o email que enviamos para você e clique em confirmar. Pode demorar uns minutos para chegar. Não esqueça de conferir sua caixa de SPAM.


Validar mensagem de erro ao colocar data de nascimento menor de 14 anos em dados pessoais 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar data de nascimento menor de 14 anos
     clicar em salvar
     Validar mensagem de erro data de nascimento    Você precisa ter no mínimo 14 anos para ter acesso ao Sodexo Club.

Validar alteração de data de nascimento em dados pessoais 
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em ver dados pessois
     Alterar data de nascimento em seus dados
     clicar em salvar
     Clicar em ver dados pessois
     Validar alteração de data de nascimento   26/05/1999

Validar botão de central de notificação
    [Tags]  meuperfil   all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    usuario_valido
     Preencher campos de login  ${user}
     Clicar no botao login
     Aceitar os cookies
     Decidir depois mensagens
     #Decidir depois localização
     clicar icone do olho
     Clicar em meu perfil
     Clicar em Central de notificacoes
     Validar menu Central de notificações       CENTRAL DE NOTIFICAÇÕES


    

