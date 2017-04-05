Pod::Spec.new do |s|
  s.name         = "loginTest"

  s.version      = "0.0.1"

  s.summary      = "all kinds of categories for iOS develop"

  s.description  = <<-DESC
                      this project provide all kinds of categories for iOS developer 
                   DESC

  s.homepage     = "https://github.com/Cl870618/loginTest"

  s.license      = "MIT"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Ethan" => "87382980@qq.com" }

  s.platform     = :ios

  s.source       = { :git => "https://github.com/Cl870618/loginTest.git", :tag => "0.0.1" }

  s.source_files  = "Classes", "loginTest/Classes/**/*.{h,m}"

  s.exclude_files = "Classes/Exclude"

  s.public_header_files = "loginTest/Classes/UIKit/UI_Categories.h","loginTest/Classes/Foundation/Foundation_Category.h","loginTest/Classes/**/*.h"
  
  s.requires_arc = true
end
