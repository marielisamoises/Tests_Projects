Dado(/^que estou na pagina inicial do portal$/) do
  visit 'http://www.tegra.com.br'
end

Quando(/^clicar em "([^"]*)"$/) do |blog|
  page.execute_script "$('a').filter(function(index)
     { return $(this).text().trim() === '#{blog}';  }).click()"
end

Dado(/^que eu espere (\d+) segundos para a tela carregar$/) do |sec|
  sleep(sec.to_i)
end

Então(/^verei a notícia "([^"]*)"$/) do |railsgirls|
 	railsgirls.split("|").each do |field|
expect(page).to have_content field.strip
end
end

Quando(/^clicar em 'LABS'$/) do
  click_on(class:'labs')
end

Então(/^verei a página "([^"]*)"$/) do |tegralabs|
  	tegralabs.split("|").each do |field|
expect(page).to have_content field.strip
end
end

#Acesso ao GoVarejo

Dado(/^que estou na pagina inicial do GO Varejo$/) do
  visit 'http://app.govarejo.com.br/'
end

Quando(/^clico em 'Orçamento'$/) do
  click_on(class:'getApp')
end

E(/^preencher o campo nome com "([^"]*)"$/) do |nome|
  find('#nome').set nome
end

E(/^o campo telefone com "([^"]*)"$/) do |telefone|
  find("#telefone").set telefone
end

E(/^email com "([^"]*)"$/) do |email|
  find("#email").set email
end

E(/^clico no botão 'Solicitar orçamento'$/) do
  click_on(class:'btn')
end 

Então(/^aparecerá a mensagem em tela "([^"]*)"$/) do |msg|
  msg.split("|").each do |field|
expect(page).to have_content field.strip
end
end

