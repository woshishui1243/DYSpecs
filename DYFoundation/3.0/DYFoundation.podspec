Pod::Spec.new do |spec|
spec.name             = 'DYFoundation'
spec.version          = '3.0'
spec.summary          = 'Guide for private pods :'
spec.description      = <<-DESC
Guide for private pods
DESC
spec.homepage         = 'https://github.com/woshishui1243/'
spec.license          = { :type => 'MIT', :file => 'LICENSE' }
spec.author           = { 'woshishui' => 'https://github.com/woshishui1243' }
spec.source           = { :git => 'https://github.com/woshishui1243/DYFoundation.git', :tag => spec.version.to_s }
spec.ios.deployment_target = '8.0'
#spec.source_files = 'DYFoundation/Classes/*.{h,m}', 'DYFoundation/Classes/ThirdParty/*.{h,txt}'

spec.vendored_libraries  = 'DYFoundation/*.{a}'
spec.frameworks = 'SystemConfiguration','CoreGraphics','CoreTelephony','Security','CoreLocation','JavaScriptCore'
spec.libraries  = 'iconv','sqlite3','stdc++','z'

spec.dependency   'AFNetworking', '~> 3.1.0'

spec.subspec 'DYSub' do |cs|
    cs.source_files = 'DYFoundation/DYRoot*.{h,m}'
end

spec.subspec 'DYUISub' do |cs|
    cs.source_files = 'DYFoundation/DYCustom*.{h,m}'
end

spec.subspec 'ThirdParty' do |cs|
    cs.source_files = 'DYFoundation/W*.{h}', 'DYFoundation/README.txt'
end

end

