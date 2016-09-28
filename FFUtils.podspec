#
# Be sure to run `pod lib lint FFControls.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FFControls'
  s.version          = '1.0.0'
  s.summary          = 'Extensions and subclasses for UIKit controls'

  s.homepage         = 'https://github.com/Faifly/FFControls'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Artem Kalmykov' => 'ar.kalmykov@gmail.com' }
  s.source           = { :git => 'https://github.com/Faifly/FFControls.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'FFControls/FFControls/**/*.{m,h,mm,hpp,cpp,c,swift}'

  s.public_header_files = 'FFControls/FFControls/FFControls.h'
  s.frameworks = 'UIKit'
end
