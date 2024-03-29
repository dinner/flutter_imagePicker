#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_multiple_image_picker'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin for picking multiple images from gallery.'
  s.description      = <<-DESC
A new Flutter plugin for picking multiple images from gallery.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'
  #s.resource_bundles = {
  #  'flutter_multiple_image_picker' => ['Classes/**/*.{storyboard,xib,png}','Classes/**/Info.plist','Classes/**/HGImage.xcassets/**/*']
  #}

end

