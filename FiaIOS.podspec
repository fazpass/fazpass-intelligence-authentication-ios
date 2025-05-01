Pod::Spec.new do |s|
  s.name             = 'FiaIOS'
  s.version          = '0.0.4'
  s.summary          = 'Intelligence Authentication IOS.'
  s.description      = 'Intelligence Authentication IOS from Fazpass.'
  s.homepage         = 'https://github.com/fazpass/fazpass-intelligence-authentication-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Widi' => 'widi@keypaz.com' }
  s.source           = { :git => 'https://github.com/fazpass/fazpass-intelligence-authentication-ios.git', :tag => "#{s.version}" }
  s.requires_arc     = true
  s.platform         = :ios, '14.0'
  
  s.dependency 'DeviceIntelligenceIOS'
  
  s.source_files        = "FiaIOSTargets/**/*.swift"
  
  s.vendored_frameworks = "XCFrameworks/FiaIOS-#{s.version}.xcframework"
  
end
