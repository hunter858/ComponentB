#
# Be sure to run `pod lib lint ComponentB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ComponentB'
  s.version          = '0.0.2'
  s.summary          = 'ComponentB. A short description of '
  s.description      = <<-DESC
      Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/hunter858/ComponentB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hunter858' => 'hunter858@sina.cn' }
  s.source           = { :git => 'https://github.com/hunter858/ComponentB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '11.0'

  
  if ENV['CCDemoLib_Source'] || ENV['AllLib_Source']
      s.source_files = 'ComponentB/Classes/**/*'
  else
      s.source_files = 'ComponentB/Classes/**/*'
      s.vendored_frameworks = 'ComponentB/Products/ComponentBBinary.framework'
      # s.dependency 'AFNetworking', '~> 2.3'
      # s.dependency 'SDWebImage', '~> 4.1.0'
  end
  
  # s.resource_bundles = {
  #   'ComponentB' => ['ComponentB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking'
end
