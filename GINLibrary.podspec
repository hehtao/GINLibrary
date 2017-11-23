

Pod::Spec.new do |s|
s.name             = 'GINLibrary'
s.version          = '0.0.2'
s.summary          = 'GINS Library.'

s.description      = <<-DESC
Copyright © GIN. All rights reserved;
DESC

s.homepage         = 'https://github.com/hehtao/GINLibrary'

s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'hehtao' => 'hehtao@163.com' }
s.source           = { :git => 'https://github.com/hehtao/GINLibrary.git', :tag => s.version.to_s }
s.social_media_url = 'http://www.detaogroup.com'
s.ios.deployment_target = '9.0'
s.requires_arc = true
s.source_files = 'Pod/Classes/GINCacheSwipe/**/*'
#s.public_header_files = 'Pod/Classes/*.h'
s.dependency 'MBProgressHUD', '~> 1.1.0'
s.frameworks = 'UIKit'

#s.subspec 'GINWipeCache' do |wipeCache|
#      wipeCache.source_files = 'GINLibrary/GINWipeCache/**/*'
#      wipeCache.public_header_files = 'GINLibrary/GINWipeCache/*.h'
#      wipeCache.dependency 'MBProgressHUD', '~> 1.1.0'
#      #NetWorkEngine.resource = "Pod/Assets/MLSUIKitResource.bundle"
#    end

#s.source_files = 'GINLibrary/Classes/**/*'
#s.public_header_files = 'GINLibrary/Classes/**/*.h'
# s.resource_bundles = {
#   'GINLibrary' => ['GINLibrary/Assets/*.png']
# }


# s.frameworks = 'UIKit', 'MapKit'

end
