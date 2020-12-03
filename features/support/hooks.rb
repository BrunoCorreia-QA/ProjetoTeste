require 'report_builder'

Before do |scenario|
   
    @cadastro = CadastroScreen.new

    visit 'https://automacaocombatista.herokuapp.com/treinamento/home'
    
        Capybara.current_session.current_window.resize_to(1366, 768)
    end

#Configuração para screenshot
After do |scenario|
    sufix = ('error' if scenario.failed?) || 'sucess'
    name = scenario.name.tr('', '_').downcase
    save_screenshot("images/#{sufix}-#{name}.png")
    embed("images/#{sufix}-#{name}.png", 'image/png', 'Screenshot')
end 

#Configuração de report
at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'logs/report.json'
        config.report_path = 'logs/report'
        config.report_types = [:html]
        config.report_title = 'Projeto Teste'
        config.color = "indigo"
        config.additional_info = {browser: 'Chrome', environment: 'Projeto Teste'}
    end 
  ReportBuilder.build_report
end

