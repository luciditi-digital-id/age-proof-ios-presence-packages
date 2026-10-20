Pod::Spec.new do |spec|
    spec.name                     = 'ageProofPresence'
    spec.version                  = '1.2.0-beta.4595'
    spec.homepage                 = 'https://github.com/luciditi-digital-id/age-proof-ios-presence-packages'
    spec.source                   = { :http => 'https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4595/ageProofPresence.xcframework.zip', :sha256 => '7782f5066a40205d371ad0e038b389d91e421cf44ceb737c273d7a4a2233fe37' }
    spec.authors                  = 'Arissian'
    spec.license                  = { :type => 'Commercial', :text => 'See LICENSE' }
    spec.summary                  = 'Luciditi Age Proof with Presence Library'
    spec.vendored_frameworks      = 'ageProofPresence.xcframework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '16.0'
    spec.dependency 'GoogleMLKit/BarcodeScanning', '9.0.0'
    spec.dependency 'GoogleMLKit/FaceDetection', '9.0.0'
    spec.dependency 'MLKitVision', '10.0.0'
    spec.dependency 'TensorFlowLiteObjC', '2.17.0'
end

