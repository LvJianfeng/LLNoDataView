Pod::Spec.new do |s|
  s.name         = "LLNoDataView"
  s.version      = "1.0.0"
  s.summary      = "LLNoDataView for No Data"
  s.homepage     = "https://github.com/LvJianfeng/LLNoDataView"
  s.license      = "MIT"
  s.authors      = {"LvJianfeng" => "coderjianfeng@foxmail.com"} 
  s.platform     = :ios
  s.source       = { :git => "https://github.com/LvJianfeng/LLNoDataView.git", :tag => "#{s.version}" }
  s.source_files  =  "LLNoDataView/**/*.{h,m}"
  s.resource = "LLNoDataView/Resources/LLNoData.bundle"
  s.requires_arc = true
end
