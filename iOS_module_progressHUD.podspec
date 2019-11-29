Pod::Spec.new do |s|
  s.name         = "iOS_module_progressHUD"
  s.version      = "1.0.0"
  s.summary      = "幻熊数据加载动画"
  s.homepage     = "https://github.com/halobear/iOS_module_progressHUD.git"
  s.license      = "MIT"
  s.author       = { "Liujidan" => "1245533989@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/halobear/iOS_module_progressHUD.git", :tag => "#{s.version}" }
  s.requires_arc = true
  s.source_files = "MBProgressHUD/*.{h,m}"
  s.dependency "SVProgressHUD"
  s.resource_bundles = {
     'MBProgressHUD' => ['MBProgressHUD/Assets/*']
  }
end
