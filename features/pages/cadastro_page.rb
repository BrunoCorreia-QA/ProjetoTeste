class CadastroScreen < SitePrism::Page

    include CadastroModule

     element :formulario, '.collapsible-header', text: 'Formulário'
     element :preencher_nome, '#user_name'
     element :preencher_sobrenome, '#user_lastname'
     element :preencher_email, '#user_email'
     element :preencher_endereco,'#user_address'
     element :preencher_universidade, '#user_university'
     element :preencher_profissao, '#user_profile'
     element :preencher_genero, '#user_gender'
     element :preencher_idade, '#user_age'    
 end

 





 
 