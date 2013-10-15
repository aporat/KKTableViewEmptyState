Pod::Spec.new do |s|
  s.name     = 'KKTableEmptyView'
  s.version  = '1.0.0'
  s.license  = 'Apache 2.0'
  s.summary  = 'Customizable UIView for Handling Empty Table Views'
  s.homepage = 'https://github.com/aporat/KKTableEmptyView.git'
  s.author   = { 'Adar Porat' => 'adar.porat@gmail.com' }
  s.source   = { :git => 'https://github.com/aporat/KKTableEmptyView.git' }
  s.platform = :ios
  
  s.source_files = 'KKTableEmptyView/*.{h,m}'
  s.resources = 'KKTableEmptyView/KKTableEmptyView.bundle'

  s.ios.deployment_target = '6.0'
  
  s.requires_arc = true

end
