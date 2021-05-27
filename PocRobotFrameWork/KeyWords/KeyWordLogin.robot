***Settings***
Resource        ../Elementos/ElementosLogin.robot

** Keywords ***
Open Session
    Set Appium Timeout      20
    #O wd/hub é o endpoint do Selenium. Isso porque o Appium é baseado no Selenium
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=campo_obrigatorio_mas_sem_utilizacao
    #                       Funçaõ do EXECDIR: váriavel de ambiente do Robot. É o diretório de execução do projeto!
    ...                     app=C:\\apk\\justo.apk    
    ...                     appPackage=br.com.justa.justo
    ...                     appActivity=crc64568f19e795968218.SplashActivity

Usuario
    [Arguments]         ${usuario}
    Input Value         ${campoEmail}   ${usuario}

Senha
    [Arguments]         ${senha}
    Input Value         ${campoSenha}   ${senha}

Realizar Login
    Wait Until Element Is Visible                       ${permissao}
    Click Element                                       ${permissao}
    Wait Until Element Is Visible                       ${campoEmail}
    Input Value                                         ${campoEmail}   ${usuarioPadrao}
    Input Value                                         ${campoSenha}   ${senhaPadrao}
    Set Appium Timeout                                  100
    Click Text                                          ${botaoEntrar}

Devera logar
    Set Appium Timeout                                  100
    Wait Until Element Is Visible                       ${botaoOk}
    Element Text Should Be                              ${botaoOk}      OK

Realizar Login com e-mail incorreto
    Wait Until Element Is Visible                       ${permissao}
    Click Element                                       ${permissao}
    Wait Until Element Is Visible                       ${campoEmail}
    Input Value                                         ${campoEmail}   erro@erro.com
    Input Value                                         ${campoSenha}   ${senhaPadrao}
    Set Appium Timeout                                  100
    Click Text                                          ${botaoEntrar}

Realizar Login com senha incorreto
    Wait Until Element Is Visible                       ${permissao}
    Click Element                                       ${permissao}
    Wait Until Element Is Visible                       ${campoEmail}
    Input Value                                         ${campoEmail}   ${usuarioPadrao}
    Input Value                                         ${campoSenha}   erroo
    Set Appium Timeout                                  100
    Click Text                                          ${botaoEntrar}

Mostrar Mensagem Usuario ou Senha Invalida
    Set Appium Timeout                                  100
    Wait Until Element Is Visible                       ${usuarioOuSenhaInvalido}
    Element Text Should Be                              ${usuarioOuSenhaInvalido}      O usuário ou a senha é inválida.

Sair da conta
    Set Appium Timeout                                  100
    Wait Until Element Is Visible                       ${botaoOk}
    Click Element                                       ${botaoOk}
    Wait Until Element Is Visible                       ${menu}
    Click Element                                       ${menu}
    Wait Until Element Is Visible                       ${tabelaMenu}
    Click Text                                          ${sairDoApp}
    Wait Until Element Is Visible                       ${sairDoAppSim}
    Click Element                                       ${sairDoAppSim}

Devera voltar a tela de Login
    Set Appium Timeout                                  300
    Element Should Be Enabled                           ${campoSenha}