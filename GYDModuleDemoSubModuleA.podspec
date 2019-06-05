
Pod::Spec.new do |s|
  s.name             = 'GYDModuleDemoSubModuleA'
  s.version          = '0.0.1'
  s.summary          = 'GYDModuleDemoSubModuleA'

  s.homepage         = 'https://github.com/pkgogai'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pkgogai' => 'pkgogai@163.com' }
  s.source           = { :git => 'git@github.com:pkgogai/GYDModuleDemoSubModuleA.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/**/*'

  s.dependency 'GYDModuleDemoInterface'

end
