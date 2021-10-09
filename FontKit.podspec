Pod::Spec.new do |s|
  s.name         = "FontKit"
  s.version      = "3.0.3"
  s.summary      = "Icon font library for iOS."
  s.license      = 'MIT'
  s.homepage     = "https://emso.vn"
  s.author       = { "cauca" => "ngodinhtung91@gmail.com" }
  s.source       = { :git => "git@github.com:tungngodinh/FontKit.git", :tag => '3.0.3' }
  s.ios.deployment_target = '9.0'
  s.ios.frameworks = 'UIKit', 'CoreText'
  s.source_files = 'FontKit/FontAwesomeKit.h'
  s.requires_arc = true

  s.subspec 'Core' do |ss|
    ss.source_files = 'FontKit/FAKIcon.{h,m}'
  end

  s.subspec 'FontAwesome' do |ss|
    ss.dependency 'FontKit/Core'
    ss.source_files = 'FontKit/FAKFontAwesome.{h,m}'
    ss.resource  = 'FontKit/FontAwesome.otf'
  end

  s.subspec 'FoundationIcons' do |ss|
    ss.dependency 'FontKit/Core'
    ss.source_files = 'FontKit/FAKFoundationIcons.{h,m}'
    ss.resource  = 'FontKit/foundation-icons.ttf'
  end

  s.subspec 'Zocial' do |ss|
    ss.dependency 'FontKit/Core'
    ss.source_files = 'FontKit/FAKZocial.{h,m}'
    ss.resource  = 'FontKit/zocial-regular-webfont.ttf'
  end

  s.subspec 'IonIcons' do |ss|
    ss.dependency 'FontKit/Core'
    ss.source_files = 'FontKit/FAKIonIcons.{h,m}'
    ss.resource  = 'FontKit/ionicons.ttf'
  end

  s.subspec 'Material' do |ss|
    ss.dependency 'FontKit/Core'
    ss.source_files = 'FontKit/FAKMaterialIcons.{h,m}'
    ss.resource  = 'FontKit/Material-Design-Iconic-Font.ttf'
  end
  end
  