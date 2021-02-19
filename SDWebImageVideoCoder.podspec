#
# Be sure to run `pod lib lint SDWebImageVideoCoder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SDWebImageVideoCoder'
  s.version          = '0.1.1'
  s.summary          = 'A toy (non-production) SDWebImage coder plugin to play Video Format like MP4 on Animated Image View'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is just a toy coder plugin for SDWebImage. Which aim to provide a demo usage that how SDWeImage combined the Animated Image View and Player and let it works for generic usage and customization.
                       DESC

  s.homepage         = 'https://github.com/SDWebImage/SDWebImageVideoCoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DreamPiggy' => 'lizhuoli1126@126.com' }
  s.source           = { :git => 'https://github.com/SDWebImage/SDWebImageVideoCoder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'SDWebImageVideoCoder/Classes/**/*', 'SDWebImageVideoCoder/Module/SDWebImageVideoCoder.h'
  s.dependency 'SDWebImage', '~> 5.10'
end
