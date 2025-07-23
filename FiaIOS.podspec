Pod::Spec.new do |s|
  s.name                = 'FiaIOS'
  s.version             = '1.1.0'
  s.summary             = 'Fazpass Intelligence Authentication IOS.'
  s.description         = 'Fazpass Intelligence Authentication IOS from Fazpass.'
  s.homepage            = 'https://fazpass.com'
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.author              = { 'Widi' => 'widi@keypaz.com' }
  s.source              = { :git => 'https://github.com/fazpass/fazpass-intelligence-authentication-ios.git', :tag => "#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, '14.0'
  s.swift_versions      = '6.0'
  
  s.dependency 'DeviceIntelligenceIOS'
  
  s.vendored_frameworks = "XCFrameworks/#{s.version}/FiaIOS.xcframework"
  
end
