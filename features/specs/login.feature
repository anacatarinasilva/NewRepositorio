# language: pt

Funcionalidade: Fazer login no site do Mark7

-Eu como professor.
-Eu quero fazer login na plataforma.

@deslogar
Cenário: fazer login com sucesso
Dado que o usuario tenha um usuario
|email|aaa.cccccccc.d.sssss@aaaaaaaaa.com|
|senha|1Sssssssssss                      |
Quando ele se logar
Entao ele verificará que está logado

