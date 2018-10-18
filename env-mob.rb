require "appium_lib"
require "appium_capybara"
require "pry"
require "rest-client"
require "json"
require "uri"
require "net/http"
require "selenium-webdriver"
require 'oci8'

ENV["http_proxy"] = nil

MASSA = YAML.load_file("data/massa.yml")
ELEMENTOS = YAML.load_file("data/elementos.yml")
# API = YAML.load_file("data/services.yml")

def caps
  {caps: {
    deviceName: "Simulador",
    platformName: "Android",
    #platformVersion: "7.1.1",
    noReset: "false",
    fullReset: "false",
    app: "features/support/omni-mais-android-debug-1.15.1.apk",
    appActivity: "br.com.omni.mais.ui.LauncherActivity",
    # appWaitActivity: "br.com.omni.mais.ui.login.LoginActivity",
    # appWaitActivity: "br.com.omni.mais.ui.home.HomeActivity",
    automationName: "Appium",
    appPackage: "br.com.omni.mais.debug",
    appWaitDuration: 11500,
    newCommandTimeout: 3600,

  }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
