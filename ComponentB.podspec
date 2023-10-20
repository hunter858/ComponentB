#
# Be sure to run `pod lib lint ComponentB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ComponentB'
  s.version          = '0.0.11'
  s.summary          = '自定义简介，尝试组件化，组件化B'
  s.description      = <<-DESC
      Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/hunter858/ComponentB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hunter858@sina.cn' => 'hunter858' }
  s.source           = { :git => 'https://github.com/hunter858/ComponentB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '11.0'

  
  if ENV['Lib_Source'] || ENV['AllLib_Source']
      s.source_files = 'ComponentB/Classes/**/*'
#      s.dependency 'AFNetworking', '~> 4.0.1'
      s.dependency 'SDWebImage', '~> 4.1.0'
  else
      s.source_files = 'ComponentB/**/*.h'
      s.vendored_frameworks = 'ComponentB/Products/ComponentBBinary.framework'
#      s.dependency 'AFNetworking', '~> 4.0.1'
      s.dependency 'SDWebImage', '~> 4.1.0'
  end
  
  # s.resource_bundles = {
  #   'ComponentB' => ['ComponentB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # s.dependency 'AFNetworking'
end
