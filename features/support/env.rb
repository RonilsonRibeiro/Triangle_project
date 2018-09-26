require "appium_lib"
require "cucumber"
require "rspec"

def caps
    {   caps: { deviceName: "Nexus_S_API_27", 
                platformName: "Android",
                app: (File.join(File.dirname(__FILE__), "TrianguloApp.apk"))
              }
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object



