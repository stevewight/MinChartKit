#
#  Be sure to run `pod spec lint MinChartKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "MinChartKit"
  s.version      = "0.0.3"
  s.summary      = "Easily Create Hyper-Minimal Charts"

  s.homepage     = "http://github.com/stevewight/MinChartKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Steve Wight" => "stevendouglaswight@gmail.com" }
  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/stevewight/MinChartKit.git", :tag => "#{s.version}" }

  s.source_files  = "MinChartKit/**/*.{h,m,swift}"
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4" }
  s.dependency "Charts", "~> 3.1.1"

end
