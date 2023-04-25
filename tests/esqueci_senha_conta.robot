* Settings *
Documentation           Arquivo com cenários da funcionalidade  esqueci senha conta

Resource        ${EXECDIR}/resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases *
Cenario: Validar botão esqueci senha
    [Tags]  esqueciSenhaConta    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    Então valido botao esqueci senha    NOVA SENHA

Cenario: validar mensagem de erro ao tentar alterar senha da conta sem informar um cpf
    [Tags]  esqueciSenhaConta    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    #Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    #informar sms  ${user}
    Validar alerta para inserir um CPF      Para prosseguir com a recuperação de senha, por favor digite seu CPF válido.

Cenario: validar mensagem de erro ao tentar alterar senha da conta com campos em branco
    [Tags]  esqueciSenhaConta    all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    clicar botao confirmar
    validar alertar para preencher os campos        Sua nova Senha não atende aos requisitos solicitados

Cenario: validar mensagem de erro ao tentar alterar senha da conta com campo nova senha em branco
    [Tags]  esqueciSenhaConta     all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    preencher campo crie uma senha segura   ${user}[senha_segura]
    clicar botao confirmar
    validar mensagem de erro por deixar campo confirme sua senha em branco      Nova senha e senha de confirmação não são iguais

Cenario: validar mensagem de erro ao tentar alterar senha da conta com campo repita nova senha em branco
        [Tags]  esqueciSenhaConta     all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    preencher campo repita sua senha segura     ${user}[senha_segura]
    clicar botao confirmar
    validar alertar para preencher os campos        Sua nova Senha não atende aos requisitos solicitados

Cenario: validar mensagem de erro ao criar senha menor de 7 caracteres
    [Tags]  esqueciSenhaConta     all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    preencher campo crie uma senha segura   ${user}[senha_7_caract]
    preencher campo repita sua senha segura     ${user}[senha_7_caract]
    clicar botao confirmar
    validar alertar para preencher os campos        Sua nova Senha não atende aos requisitos solicitados

Cenario: validar mensagem de erro ao criar nova senha sem incluir um numero
    [Tags]  esqueciSenhaConta     all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    preencher campo crie uma senha segura   ${user}[senha_sem_numero]
    preencher campo repita sua senha segura     ${user}[senha_sem_numero]
    clicar botao confirmar
    validar alertar para preencher os campos        Sua nova Senha não atende aos requisitos solicitados

Cenario: validar mensagem de erro ao criar nova senha sem incluir letras
    [Tags]  esqueciSenhaConta     all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    preencher campo crie uma senha segura   ${user}[senha_sem_letra]
    preencher campo repita sua senha segura     ${user}[senha_sem_letra]
    clicar botao confirmar
    validar alertar para preencher os campos        Sua nova Senha não atende aos requisitos solicitados

Cenario: validar mensagem de erro ao criar nova senha sem incluir caractere especial
    [Tags]  esqueciSenhaConta     all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    preencher campo crie uma senha segura   ${user}[senha_sem_caracter]
    preencher campo repita sua senha segura     ${user}[senha_sem_caracter]
    clicar botao confirmar
    validar alertar para preencher os campos        Sua nova Senha não atende aos requisitos solicitados

Cenario: validar botao voltar esqueci senha da conta
    [Tags]  esqueciSenhaConta     all
    # pegando a massa de dados do arquivo Usuarios.py
    ${user}     Factory User    AlterarSenha1
    Preencher campo de CPF  ${user}
    clicar botao esqueci senha da conta
    informar sms  ${user}
    Então valido botao esqueci senha    NOVA SENHA
    clicar botao voltar
    Então validar tela de inicio do app        Insira seu CPF e senha para entrar






    


