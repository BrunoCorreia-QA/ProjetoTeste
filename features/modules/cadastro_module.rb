module CadastroModule
        
     def cadastrar_usuario
          formulario.click
          click_link 'Criar Usuários'
          preencher_nome.send_keys 'Bruno'
          preencher_sobrenome.send_keys 'Correia de Matos'
          preencher_email.send_keys 'brun0_c0rreia@hotmail.com'
          preencher_endereco.send_keys 'Avenida Rua Casa, 01'
          preencher_universidade.send_keys 'Oxford'
          preencher_profissao.send_keys 'Analista de Qualidade'
          preencher_genero.send_keys 'Masculino'
          preencher_idade.send_keys '33'
          click_button 'Criar'
     end
end     



