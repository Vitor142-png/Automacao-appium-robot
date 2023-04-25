* Settings *
Library         AppiumLibrary
Library         BuiltIn
Library         OperatingSystem
Library         ${EXECDIR}/resources/fixtures/Usuarios.py

Resource        ../actions/login/login_actions.robot
Resource        ../actions/dashboard/dashboard_actions.robot
Resource        ../actions/cadastro/cadastro_actions.robot
Resource        ../actions/homeCards/home_cards_actions.robot
Resource        ../actions/alterarSenha/alterar_senha_actions.robot
Resource        ../actions/esqueciSenha/esqueci_senha_actions.robot
Resource        ../actions/transferencia/transferencia_actions.robot
Resource        ../actions/fidelidade/fidelidade_actions.robot
#Resource        ../actions/descontos/descontos_actions.robot
Resource        ../actions/esqueci_senha_conta/esqueci_senha_conta.robot
Resource        ${EXECDIR}/resources/helpers.robot
Resource        ../actions/ondeUsar/onde_usar_actions.robot
Resource        ../actions/meu_perfil/meu_perfil_actions.robot


* Variables *
${GLOBAL_TIMEOUT}       25
${APP_OS}               "android"
${ENVIRONMENT}          "local"
${CI}                   "ci_false"

* Keywords *
Browserstack config
    IF  "${CI}" == "ci_true"
        ${BS_USER}=             Get Environment Variable        BROWSERSTACK_USERNAME
        ${BS_KEY}=              Get Environment Variable        BROWSERSTACK_ACCESS_KEY
        ${BS_ANDROID_APP}=      Get Environment Variable        BS_ANDROID_APP        
        ${BS_IOS_APP}=          Get Environment Variable        BS_IOS_APP        
        Set Global Variable    ${BS_USER}
        Set Global Variable    ${BS_KEY}
        Set Global Variable    ${BS_ANDROID_APP}
        Set Global Variable    ${BS_IOS_APP}
    ELSE IF     "${CI}" == "ci_false"
        ${file}         Get File            ${EXECDIR}/resources/support/bs_configs.json
        ${super_var}    Evaluate            json.loads($file)           json
        Set Global Variable    ${BS_USER}          ${super_var}[bs_user]
        Set Global Variable    ${BS_KEY}           ${super_var}[bs_key]
        Set Global Variable    ${BS_ANDROID_APP}   ${super_var}[android_url]
        Set Global Variable    ${BS_IOS_APP}       ${super_var}[ios_url]
    ELSE 
        Log To Console  parâmetros de execução inválidos
    END


Abrir App
    Browserstack config
    IF  "${ENVIRONMENT}" == "local"
        IF  "${APP_OS}" == "android"
            Abrir App Local Android
        ELSE
            Abrir App Local iOS
        END
    ELSE
        IF  "${APP_OS}" == "android"
            Abrir App BS Android
        ELSE
            Abrir App BS iOS
        END
    END

Abrir App Local Android
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/android/app.apk
    ...                 udid=RQ8R3010P2T
    ...                 appPackage=com.primety.sodexomobile.hml
    ...                 appActivity=com.primety.sodexomobile.ui.splash.SplashActivity
    ...                 autoGrantPermissions=true

Abrir App Local iOs
    Open Application    http://hub-cloud.browserstack.com/wd/hub
    ...                 browserstack.user=${BS_USER}
    ...                 browserstack.key=${BS_KEY}
    ...                 platformName=iOS
    ...                 platformVersion=12
    ...                 deviceName=iPhone XS
    ...                 app=app=${EXECDIR}/app/ios/app.ipa
    ...                 autoAcceptAlerts=true
    ...                 bundleId=br.com.sodexo.homol

Abrir App BS Android
    Open Application    http://hub-cloud.browserstack.com/wd/hub
    ...                 browserstack.user=${BS_USER}
    ...                 browserstack.key=${BS_KEY}
    ...                 platformName=Android
    ...                 platformVersion=10.0
    ...                 deviceName=Samsung Galaxy S20 Plus
    ...                 appPackage=com.primety.sodexomobile.hml
    ...                 appActivity=com.primety.sodexomobile.ui.splash.SplashActivity
    ...                 app=bs://${BS_ANDROID_APP}


Abrir App BS iOS
    Open Application    http://hub-cloud.browserstack.com/wd/hub
    ...                 browserstack.user=${BS_USER}
    ...                 browserstack.key=${BS_KEY}
    ...                 automationName=XCUITest
    ...                 platformName=iOS
    ...                 platformVersion=15
    ...                 deviceName=iPhone XR
    ...                 autoAcceptAlerts=true
    ...                 bundleId=br.com.sodexo.homol
    ...                 app=bs://${BS_IOS_APP}


Fechar App
    Capture Page Screenshot
    Close Application