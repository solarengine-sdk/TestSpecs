#
# Be sure to run `pod lib lint SETestSpecs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SETestSpecs'
  s.version          = '0.1.1'
  s.summary          = 'SE TestSpecs for iOS'

  s.homepage         = 'https://github.com/sdk@solar-engine.com/TestSpecs'
  s.license          =  { :type => "Apache License, Version 2.0" }
  s.author           = { 'sdk@solar-engine.com' => 'baixin.pan@mobvista.com' }
  s.source           = { :git => 'https://github.com/solarengine-sdk/TestSpecs.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.vendored_frameworks = 'SolarEngineSDK/SolarEngineSDK.framework'

  s.frameworks = "Security", "CoreTelephony", "AdSupport", "SystemConfiguration", "AdServices", "AppTrackingTransparency"
  s.libraries = "sqlite3"
  s.requires_arc = true
  s.resource_bundles = {'SolarEngineSDK' => ['SolarEngineSDK.framework/PrivacyInfo.xcprivacy']}

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
