Pod::Spec.new do |s|
   s.name                  = "SwiftFlags"
   s.version               = "1.0.0"
   s.summary               = "Simple Swift library to get emoji flag from a country name or country code (ISO 3166-1)."
   s.homepage              = "https://github.com/BubiDevs/SwiftFlags.git"
   s.license               = { :type => "MIT", :file => "LICENSE" }
   s.author                = { "Andrea Busi" => "busi.andrea@gmail.com" }
   s.social_media_url      = "https://twitter.com/bubidevs"
   s.ios.deployment_target = "10.0"
   s.source                = { :git => "https://github.com/BubiDevs/SwiftFlags.git", :tag => s.version.to_s }
   s.source_files          = 'SwiftFlags/Sources/**/*.swift'
   s.frameworks            = "Foundation"
   s.swift_versions        = ['5.0', '5.1']
end