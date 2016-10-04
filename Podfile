source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

target 'ViewBlockDefectDemo' do
    pod 'AsyncDisplayKit', :git => 'https://github.com/facebook/AsyncDisplayKit.git', :branch => 'master'
end

## Xcode 8 support
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3'
        end
    end
end


