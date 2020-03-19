#
# Be sure to run `pod lib lint KochavaEngagementExtensioniOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'KochavaEngagementExtensioniOS'
s.version          = '3.14.1'
s.summary          = 'The KochavaEngagementExtension module of the KochavaTracker iOS SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description  = <<-DESC
The KochavaEngagementExtension iOS Module provides support for Engagement, such as push notifications (a.k.a. remote notifications), within app extensions.  This is applicable to Notification Service Extensions.
DESC

s.homepage         = 'http://www.kochava.com'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'Commercial', :file => 'LICENSE' }
s.author       = { 'Kochava' => 'support@kochava.com' }
s.source           = { :git => 'https://github.com/Kochava/kochava-engagement-extension-ios-cocoapod.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'

s.source_files = 'KochavaEngagementExtensioniOS/Classes/**/*'

# s.resource_bundles = {
#   'KochavaEngagementExtensioniOS' => ['KochavaEngagementExtensioniOS/Assets/*.png']
# }

s.public_header_files = 'KochavaEngagementExtensioniOS/Classes/**/*.h'
s.frameworks   = 'Foundation', 'UIKit', 'UserNotifications'
# s.dependency 'AFNetworking', '~> 2.3'

s.platform     = :ios, '8.0'
s.vendored_library = 'KochavaEngagementExtensioniOS/Libraries/libKochavaEngagementExtensioniOS.a'
s.preserve_path = 'KochavaEngagementExtensioniOS/Libraries/libKochavaEngagementExtensioniOS.a'
s.library = 'KochavaEngagementExtensioniOS'

s.dependency 'KochavaTrackeriOS', '3.14.1'
end
