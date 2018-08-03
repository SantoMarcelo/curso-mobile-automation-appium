require "appium_lib"

def caps
{ caps: {
    deviceName: "Samsung Galaxy S8 - 8.0 - API 26 - 1440x2960",
    platformName: "Android",
    app: (File.join(File.dirname(__FILE__), "ringbynameapp-qc.apk")),
    appPackage: "com.ringbyname.mobile.RingByName",
    appActivity: "RingByNameStaging",
    newCommandTimeout: "3600",
    #automationName: "UiAutomator2s"
}}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
