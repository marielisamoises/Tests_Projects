#language: pt

Funcionalidade: Acesso ao portal 
Sendo eu um usuário
Irei navegar pelo portal TEGRA
Para verificar seu funcionamento

Cenário: Acesso ao Blog e Labs
Dado que estou na pagina inicial do portal

Quando clicar em "blog"
Dado que eu espere 10 segundos para a tela carregar
Então verei a notícia "RAILSGIRLS"

Quando clicar em 'LABS'
Dado que eu espere 10 segundos para a tela carregar
Então verei a página "TEGRALABS"



Cenário: Acesso ao Produto GO

Dado que estou na pagina inicial do GO Varejo
Quando clico em 'Orçamento'
E preencher o campo nome com "Teste"
E o campo telefone com "1111111111"
E email com "teste@teste.com.br"
E clico no botão 'Solicitar orçamento'
Dado que eu espere 10 segundos para a tela carregar
Então aparecerá a mensagem em tela "Obrigado!"
