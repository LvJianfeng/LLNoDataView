Pod::Spec.new do |s|
  s.name         = "LLNoDataView"
  s.version      = "0.0.1"
  s.summary      = "No Data"
  s.homepage     = "https://github.com/LvJianfeng/LLNoDataView"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = "MIT"
  s.authors      = {"LvJianfeng" => "coderjianfeng@foxmail.com"} 
  s.platform     = :ios
  s.source       = { :git => "https://github.com/LvJianfeng/LLNoDataView.git", :tag => "#{s.version}" }
  s.source_files  =  "LLNoDataView/**/*.{h,m}"
  s.resource = "LLNoDataView/Resources/LLNoData.bundle"
  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  s.requires_arc = true
end
