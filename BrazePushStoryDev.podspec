Pod::Spec.new do |s|
  s.name              = 'BrazePushStoryDev'
  s.module_name       = 'BrazePushStory'
  s.version           = '7.3.0'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazePushStory.zip',
    :sha256 => 'a23618b4fbc05e8b418ffca0ff8a6726f016344b183b6769954d6b488afba79d'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
