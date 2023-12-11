Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationServiceDev'
  s.module_name       = 'BrazeNotificationService'
  s.version           = '7.3.0'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeNotificationService.zip',
    :sha256 => '56d7f9a0d158eae5a322c89ad38773dea1667f443ce339827f53fa5bb0c846b7'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
