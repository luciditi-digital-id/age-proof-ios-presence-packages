Pod::Spec.new do |spec|
    spec.name                     = 'ageProofPresence'
    spec.version                  = '1.2.1-beta.4765'
    spec.homepage                 = 'https://github.com/luciditi-digital-id/age-proof-ios-presence-packages'
    spec.source                   = { :http => 'https://github.com/luciditi-digital-id/age-proof-ios-presence-packages/releases/download/v1.2.1-beta.4765/ageProofPresence.xcframework.zip', :sha256 => '410d7550227e9439fd81416edbb0319858ee8886ca467b63de5bf93413694b47' }
    spec.authors                  = 'Arissian'
    spec.license                  = { :type => 'Commercial', :text => 'See LICENSE' }
    spec.summary                  = 'Luciditi Age Proof with Presence Library'
    spec.vendored_frameworks      = 'ageProofPresence.xcframework'
    # Compose reads these resources from the app bundle, rather than a .bundle
    # or the static framework. Stage one architecture-independent copy before
    # CocoaPods collects resource paths, retaining the complete directory tree.
    spec.prepare_command = <<-'CMD'
set -eu
source_resources="ageProofPresence.xcframework/ios-arm64/ageProofPresence.framework/composeResources"
if [ ! -d "$source_resources" ]; then
    echo "error: AgeProof Presence archive is missing Compose resources" >&2
    exit 1
fi
mkdir -p compose-resources
/usr/bin/ditto "$source_resources" compose-resources/composeResources
CMD
    spec.resources = 'compose-resources'
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '16.0'
    spec.dependency 'GoogleMLKit/BarcodeScanning', '9.0.0'
    spec.dependency 'GoogleMLKit/FaceDetection', '9.0.0'
    spec.dependency 'MLKitVision', '10.0.0'
    spec.dependency 'TensorFlowLiteObjC', '2.17.0'
end

