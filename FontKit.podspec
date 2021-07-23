Pod::Spec.new do |s|
  s.name         = "FontKit"
  s.version      = "3.0.2"
  s.summary      = "Icon font library for iOS."
  s.license      = 'MIT'
  s.homepage     = "https://emso.vn"
  s.author       = { "cauca" => "ngodinhtung91@gmail.com" }
  s.source       = { :git => "git@github.com:tungngodinh/FontKit.git", :tag => '3.0.2' }
  s.ios.deployment_target = '9.0'
  s.ios.frameworks = 'UIKit', 'CoreText'
  s.source_files = 'FontAwesomeKit/FontAwesomeKit.h'
  s.requires_arc = true

  s.subspec 'Core' do |ss|
    ss.source_files = 'FontAwesomeKit/FAKIcon.{h,m}'
  end

  s.subspec 'FontAwesome' do |ss|
    ss.dependency 'FontAwesomeKit/Core'
    ss.source_files = 'FontAwesomeKit/FAKFontAwesome.{h,m}'
    ss.resource  = 'FontAwesomeKit/FontAwesome.otf'
  end

  s.subspec 'FoundationIcons' do |ss|
    ss.dependency 'FontAwesomeKit/Core'
    ss.source_files = 'FontAwesomeKit/FAKFoundationIcons.{h,m}'
    ss.resource  = 'FontAwesomeKit/foundation-icons.ttf'
  end

  s.subspec 'Zocial' do |ss|
    ss.dependency 'FontAwesomeKit/Core'
    ss.source_files = 'FontAwesomeKit/FAKZocial.{h,m}'
    ss.resource  = 'FontAwesomeKit/zocial-regular-webfont.ttf'
  end

  s.subspec 'IonIcons' do |ss|
    ss.dependency 'FontAwesomeKit/Core'
    ss.source_files = 'FontAwesomeKit/FAKIonIcons.{h,m}'
    ss.resource  = 'FontAwesomeKit/ionicons.ttf'
  end

  s.subspec 'Material' do |ss|
    ss.dependency 'FontAwesomeKit/Core'
    ss.source_files = 'FontAwesomeKit/FAKMaterialIcons.{h,m}'
    ss.resource  = 'FontAwesomeKit/Material-Design-Iconic-Font.ttf'
  end
  end
  