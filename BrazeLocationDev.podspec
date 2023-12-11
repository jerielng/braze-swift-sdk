Pod::Spec.new do |s|
  s.name              = 'BrazeLocationDev'
  s.module_name       = 'BrazeLocation'
  s.version           = '7.3.0'
  s.summary           = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazelocation/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/jerielng/braze-swift-sdk/releases/download/7.3.0/BrazeLocation.zip',
    :sha256 => '14477090a005913be9566dcd317dd908e0f64a34e384540c61ffdceddc9e35f1'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'
  s.tvos.deployment_target  = '11.0'

  s.vendored_framework      = 'BrazeLocation.xcframework'
  s.resource_bundles        = { 'BrazeLocation' => ['Sources/BrazeLocationResources/Resources/**/*'] }

  # Depends on BrazeKit because BrazeKit includes the internal _BrazeLocationClient symbols required
  # for linking against BrazeLocation.
  s.dependency 'BrazeKitDev', '7.3.0'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
