

Pod::Spec.new do |s|
  s.name         = "loginTest"
  s.version      = "0.0.1"
  s.summary      = "A short description of loginTest."
  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://github.com/Cl870618/loginTest"
  s.license      = "MIT"
  s.author             = { "Ethan" => "87382980@qq.com" }
  s.source       = { :git => "https://github.com/Cl870618/loginTest.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "loginTest/Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
end
