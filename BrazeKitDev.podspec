Pod::Spec.new do |s|
  s.name              = 'BrazeKitDev'
  s.module_name       = 'BrazeKit'
  s.version           = '7.3.0'
  s.summary           = 'Braze Main SDK library providing support for analytics and push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazekit/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeKit.zip',
    :sha256 => '5725a51f42fdcb26d3b6c0a9616185885ba7656a9e5ae8acd3a3938509d1e308'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'
  s.tvos.deployment_target  = '11.0'

  s.vendored_framework      = 'BrazeKit.xcframework'
  s.resource_bundles        = { 'BrazeKit' => ['Sources/BrazeKitResources/Resources/**/*'] }

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
