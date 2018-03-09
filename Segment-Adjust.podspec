Pod::Spec.new do |s|
  s.name             = "Segment-Adjust"
  s.version          = "1.1.3"
  s.summary          = "Adjust Integration for Segment's analytics-ios library."

  s.description      = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools.

                       This is the Adjust integration for the iOS library.
                       DESC

  s.homepage         = "http://segment.com/"
  s.license          =  { :type => 'MIT' }
  s.author           = { "Segment" => "friends@segment.com" }
  s.source           = { :git => "https://github.com/segment-integrations/analytics-ios-integration-adjust.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/segment'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.dependency 'Analytics', '~> 3.0'
  s.dependency 'Adjust', '~> 4.10'

  s.subspec 'StaticLibWorkaround' do |workaround|
    # For users who are unable to bundle static libraries as dependencies
    # you can choose this subspec, but be sure to include the following in your Podfile:
    # pod 'Adjust','~> 4.10'
    # Please manually add the following file preserved by Cocoapods to your xcodeproj file
    workaround.preserve_paths = 'Pod/Classes/**/*'
  end
end
