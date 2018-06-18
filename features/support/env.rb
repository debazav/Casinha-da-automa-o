require "rspec"
require "yaml"
require "pry"
require "capybara/cucumber"
require "yaml"
require "ffaker"
require "capybara-screenshot/cucumber"
require "oci8"

# options =
MASSA = YAML.load_file("data/massa.yml")
ELEMENTOS = YAML.load_file("data/elementos.yml")
CAMPOS_PROPOSTA = YAML.load_file("data/campos_proposta.yml")

Capybara::Screenshot.autosave_on_failure = false
Capybara.default_max_wait_time = 180

if ENV["chrome"]
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 180
    client.open_timeout = 180
    Capybara::Selenium::Driver.new(app, browser: :chrome, http_client: client)
  end
elsif ENV["firefox"]
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
elsif ENV["ie"]
  Capybara.default_driver = :ie
  Capybara.register_driver :ie do |app|
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  end
elsif ENV["headless_debug"]
  Capybara.default_driver = :poltergeist_debug
  Capybara.register_driver :poltergeist_debug do |app|
    Capybara::Poltergeist::Driver.new(app, inspector: true)
  end
  Capybara.javascript_driver = :poltergeist_debug
elsif ENV["headless"]
  Capybara.javascript_driver = :poltergeist
  Capybara.default_driver = :poltergeist
else
  Capybara.default_driver = :selenium
end
