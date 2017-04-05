Pod::Spec.new do |s|
  s.name         = "loginTest"

  s.version      = "0.0.1"

  s.summary      = "一个建立pod 仓库的简单demo"


  s.homepage     = "https://github.com/Cl870618/loginTest"

  s.license      = "MIT"

  s.author             = { "Ethan" => "87382980@qq.com" }

  s.platform     = :ios
  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/Cl870618/loginTest.git", :tag => "0.0.1" }

  s.requires_arc = true

  s.source_files  = "loginTest/*.{h,m}"

end
