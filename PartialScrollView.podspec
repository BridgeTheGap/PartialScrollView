#
# Be sure to run `pod lib lint PartialScrollView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PartialScrollView'
  s.version          = '0.2.0'
  s.summary          = 'A scroll view whose scroll area is customizable.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
PartialScrollView, like its name, allows the user to customize the scrollable area,
which solves the problem of programmers who wanted a scroll view-like behavior,
but only for a certain part of their views.
Instead of using a pan gesture recognizer for the small view, use the scroll view
like you normally would, but just don't forget to set the scrollable area.
                       DESC

  s.homepage         = 'https://github.com/BridgeTheGap/PartialScrollView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Josh Woomin Park' => 'joshuaparkwm@gmail.com' }
  s.source           = { :git => 'https://github.com/BridgeTheGap/PartialScrollView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PartialScrollView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PartialScrollView' => ['PartialScrollView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
