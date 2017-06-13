
Pod::Spec.new do |s|

  s.name         = "LPPlaySound"
  s.version      = "0.0.1"
  s.summary      = "播放音效"
  s.description  = <<-DESC
            播放本地音效或系统音效
                   DESC

  s.homepage     = "https://github.com/Liu-Peng/TestPlaySound"
  s.license      = "MIT "
  s.author             = { "liupeng" => "liupeng0242@gmail.com" }

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/Liu-Peng/TestPlaySound.git", :tag => "#{s.version}" }

  s.source_files  = "TestPlaySound/LPPlaySound.{h,m}"

  #s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"

  s.frameworks = "UIKit", "AudioToolbox"
  s.requires_arc = true

end
