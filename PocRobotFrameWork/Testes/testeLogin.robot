***Settings***
Library             AppiumLibrary
Test Setup          Open Session
Resource            ../Keywords/KeyWordLogin.Robot
Test Teardown       Close Application

***Test Cases***
logar no app
    Realizar Login
    Devera logar

Tentativa de logon com e-mail invalido
    Realizar Login com e-mail incorreto
    Mostrar Mensagem Usuario ou Senha Invalida

Tentativa de logon com senha invalido
    Realizar Login com senha incorreto
    Mostrar Mensagem Usuario ou Senha Invalida

Teste Sair do App
    Realizar Login
    Sair da conta
    Devera voltar a tela de Login



