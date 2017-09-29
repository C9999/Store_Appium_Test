require 'appium_lib'
require 'pry'

def caps
    { caps:
        { deviceName: 'f1azb6034349',
            platformName: 'Android',
            app: (File.join(File.dirname(__FILE__), 'netshoes.apk')),
            appPackage: 'br.com.netshoes.app',
            appActivity: 'br.com.zattini.home.HomeActivity',
            newCommandTimeout: '3600',
            # fullReset: true, # remover app apos suit de testes ser executada
            appium_lib: {
                wait: 0,
                debug: false
            }
        }
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
