* Settings *
Documentation           Arquivo com os elementos da tela de login da aplicacao, para serem usados na action de login

* Variables *
# Elementos da login_actions
${input_cpf}                xpath=//XCUIElementTypeTextField[@value="000.000.000-00"]
${input_password}           xpath=//XCUIElementTypeSecureTextField[@value="Senha do aplicativo"]
${btn_entrar}               xpath=//XCUIElementTypeButton[@name="ENTRAR"]
${banner_depois}            xpath=//XCUIElementTypeStaticText[@name="Depois"]
${alert_login_erro}         xpath=//XCUIElementTypeStaticText[@name="Insira seu CPF e senha para entrar"]
${msg_cookie}               
${btn_aceitar_cookies}      
${btn_decidir_depois}       
${btn_recusar_cadastro}     
${banner}                   
${allow_once}               xpath=//XCUIElementTypeButton[@name="Allow Once"]
${allow}                    xpath=//XCUIElementTypeButton[@name="Allow"]
${ask_app_not to_track}     xpath=//XCUIElementTypeButton[@name="Ask App Not to Track"]
${user_name}            
${user_name_id}        

${GLOBAL_TIMEOUT}           35

# ELementos do cadastro_actions