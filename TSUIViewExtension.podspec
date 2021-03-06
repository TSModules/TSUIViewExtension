#
# Be sure to run `pod lib lint TSUIViewExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TSUIViewExtension'
  s.version          = '0.1.0'
  s.summary          = 'Extension for UIView.'

  s.homepage         = 'https://github.com/TSWang/TSUIViewExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TSWang' => 'cgwangding@163.com' }
  s.source           = { :git => 'https://github.com/TSWang/TSUIViewExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'TSUIViewExtension/Classes/**/*'
  
  s.frameworks = 'UIKit'
end
