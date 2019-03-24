require 'capybara'
require 'capybara/rspec'


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
 
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  #maximizar tela
  config.before(:each) do
  page.current_window.resize_to(1280,800)
  end

  #tira screenshot
  config.after(:example) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    # if e.exception condição para obter evidencia somente quando o teste falha
    # para todos os cenários, tire o if 
    page.save_screenshot('log/' + nome + '.png') # if e.exception
  end


  Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
  end

  #Configuração do navegador, timeout e pagina principal, _headless 
  Capybara.configure do |config|
  config.default_driver = :selenium_chrome #_headless
  #config.default_driver = :selenium
  config.default_max_wait_time = 5
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'
  end
end