Pod::Spec.new do |spec|
    spec.name                     = 'ageProofPresence'
    spec.version                  = '1.2.0-beta.4380'
    spec.homepage                 = 'https://github.com/luciditi-digital-id/age-proof-ios-presence-packages'
    spec.source                   = { :http => 'https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.0-beta.4380/ageProofPresence.xcframework.zip', :sha256 => '21b92bf7df04447462ab13544f3d534d5d0326564437ef0f23471a87881780db' }
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

