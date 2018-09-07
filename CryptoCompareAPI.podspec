Pod::Spec.new do |s|
  s.name         = "CryptoCompareAPI"
  s.version      = "0.2.3"
  s.summary      = "Swifty CryptoCompare API client."
  s.description  = "CryptoCompareAPI is an easy to use and well tested API client
for the best free to use cryptocurrency database."

  s.ios.deployment_target  = '10.0'
  s.tvos.deployment_target = '9.0'
  s.homepage     = "https://github.com/tapkain/CryptoCompareAPI"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Eugene Velizhenkov" => "tredasaibot@gmail.com" }
  s.swift_version = "4.2"
  s.source       = { :git => "https://github.com/tapkain/CryptoCompareAPI.git", :tag => "#{s.version}" }
  s.source_files  = "CryptoCompareAPI/**/*.{swift}"
  s.exclude_files = "Classes/Exclude"
end
