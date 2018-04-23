#
# Be sure to run `pod lib lint Mantle-CMCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Mantle-CMCategories'
  s.version          = '0.1.0'
  s.summary          = '基于Mantle的扩展'

  s.homepage         = 'https://github.com/JKshared92/Mantle-CMCategories'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'comma' => '506702341@qq.com' }
  s.source           = { :git => 'https://github.com/JKshared92/Mantle-CMCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Mantle-CMCategories/Classes/**/*'
  s.frameworks = 'UIKit','Foundation'
  s.dependency 'Mantle'
  
end
