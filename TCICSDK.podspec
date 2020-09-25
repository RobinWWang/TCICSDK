
Pod::Spec.new do |s|


  s.name         = "TCICSDK"
  s.version      = "1.0.0.61"
  s.summary      = "TCICSDK"
  s.description  = <<-DESC
                      腾讯云互动教育极简单接入SaaS方案
                   DESC
  s.homepage     = "https://github.com/JamesChenGithub/TCICSDK"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "alexichen"
  s.platform     = :ios
  s.platform     = :ios, "9.0"

  valid_archs = ['armv7','arm64', 'x86_64']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }


  s.source       = { :git => "https://github.com/JamesChenGithub/TCICSDK.git", :tag => "#{s.version}" }
  
  s.resource = 'tcicimage.bundle'
  s.vendored_frameworks = 'TCICSDK.framework'
  s.frameworks = 'Foundation', 'Accelerate'
  s.dependency 'Masonry'
  s.dependency 'YYModel'
  s.dependency 'TIWLogger_iOS'
  s.dependency 'ZipArchive'
  s.dependency 'TXLiteAVSDK_TRTC', '7.6.9355'

end