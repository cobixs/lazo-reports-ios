Pod::Spec.new do |s|
  s.name             = 'LazoReports'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LazoReports.'

  s.description      = 'A longer description of LazoReports'

  s.homepage         = 'https://github.com/cobixs/LazoReports'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Cobixs'
  s.source           = { :git => 'https://github.com/cobixs/LazoReports.git', :tag => s.version.to_s }

  s.platform         = :ios, '12.0'
  s.requires_arc     = true
  s.swift_version    = '5.0'

  s.source_files = 'LazoReports/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LazoReports' => ['LazoReports/Assets/*.png']
  # }

  # s.dependency 'AFNetworking', '~> 2.3'
end
