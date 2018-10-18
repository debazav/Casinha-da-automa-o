##cheatSheets do vitocaaa
ruby -e"10.times{ system 'cucumber chrome=true -t@gera_proposta_generica'}"
--guess
AMBIENTE = YAML.load_file("ambiente.yml")
File.open("data/#{nome_arquivo}.html", "w") { |f| f.write(corpo) }# grava gerando um arquivo novo
html = File.open("data/#{nome_arquivo}.html") ## abre um arquivo
find(".tab-anchor", text: "COMODIDADES").click
assert_selector(".tab-anchor", text: "COMODIDADES")
select(valor.to_s, :from => label)
select(11, :from => id,name,label )
find(campo select).find("option[value='#{value}']").select_option	
find('.button-primary', text:"RESGATAR").click
pai = find(".checkout-summary-info-title", text: "Tempo de habilitação").find(:xpath, '..')
data_desejada.strftime('%d-%m-%Y') DAte para String
Date.strptime(data_desejada, '%Y-%m-%d') String pra Date
###### pega so numeros da string ###
a.scan(/\d/).join('') 
line.scan(/\d/).join('')
line.gsub(/[^0-9]/, '')
line.gsub(/[^\d]/, '')
line.tr("^0-9", '')
line.delete("^0-9")
line.split(/[^\d]/).join
line.gsub(/\D/, '')
#####################################
find("svg use")['xlink:href'] # pega o value do atributo no []

rt.gsub!("rateToken ", "")
rt.gsub!("<", "{")
rt.gsub!(">", "}")
rt.gsub!("=", ":")
rt.gsub!(" ", ", ")
rt.gsub!("/", "")
foi = eval(rt)
####################CHAMR STEPS DENTRO DE STEPS#############
  steps %Q{
    Dado que eu esteja no site livelo carros
    Quando eu faco uma busca com "#{"miami"}" locadora "#{"ZR"}"
    E eu faço a pesquisa dos carros
    E eu recebo o Local de retirada e Local de devolução
    E eu recebo os detalhes do carro
    E eu preencho os dados dos clientes carros com Data nasc OK e Habilitacao OK
    Entao eu recebo o nro do orderID carros
    E eu verifico se "#{"cpp"}" dentro de "#{"price"}" está preenchido
    E eu não recebo mensagem de erro do addTravelItemToOrder
  }

elsif ENV['tt']
  Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
  mobile_emulation = { "deviceName" => "Nexus 5" }
  caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => { "mobileEmulation" => mobile_emulation })
  Capybara::Selenium::Driver.new(app,browser: :chrome,desired_capabilities: caps, args:['--incognito','--no-sandbox','disable-gpu'])
  end

  file_name = scenario.name.gsub(' ', '_').downcase!
  target = "data	/screenshots/error/#{file_name}.png"
  if scenario.failed?
    page.save_screenshot(target)
    embed(target, 'image/png', 'Evidência')
  end

horario = rand(0..23)
 within(".withdrawal-info-row"){find(ELEMENTS[campo]).find("option[value='#{horario}']").select_option}
checkout-form-error	

result = page.driver.browser.window_handles.last
page.driver.browser.switch_to.window(result)

def valida_alert
    begin
      retries ||= 0
      "vam ve"
      puts "#{page.driver.browser.switch_to.alert.text} SIM."
      page.accept_alert
      raise "PAGINA NAO RESPONDEU" unless assert_no_selector(".main-frame-error") == true
    rescue
      p "sera?"
      retry if (retries += 1) < 30
    end
  end
#TIRAR PRINT APOS STEPS PARA O RELATORIO
AfterStep do   
  screenshot = screenshot("data/screenshots/#{Time.now.strftime("%Y%m%d%H%M%S")}.png")
  embed("data:image/png;base64,#{Base64.encode64(open(screenshot).to_a.join)}", "image/png")
 end
