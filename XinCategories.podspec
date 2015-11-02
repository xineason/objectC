#
#  Be sure to run `pod spec lint QFToolBar.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "XinCategories"
  s.version      = "1.0.2"
  s.summary      = "XinCategories summary"
  s.homepage     = "https://github.com/xineason/objectC"
  s.license      = 'MIT'

  s.author       = { "xineason" => "y.xinetd@gmail.com" }

  s.platform     = :ios, '7.0'

  s.source       = { :git => "https://github.com/xineason/objectC.git", :tag => "1.0.2"}
  s.source_files  = 'XinCategories/*.{h,m}'
  s.exclude_files = 'XinCategories'

  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

  s.requires_arc = true

end  