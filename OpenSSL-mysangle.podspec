Pod::Spec.new do |s|
    s.name             = 'OpenSSL-mysangle'
    s.version          = '1.1.0'
    s.summary          = 'OpenSSL'

    s.description      = <<-DESC
    OpenSSL
    DESC

    s.homepage         = 'https://github.com/mysangle/FFmpegKit-mysangle'
    s.authors = { 'mysangle' => 'mysangle@gmail.com' }
    s.license          = 'MIT'
    s.source           = { :git => 'https://github.com/mysangle/FFmpegKit-mysangle.git', :tag => s.version.to_s }

    s.ios.deployment_target = '13.0'
    s.default_subspec = 'OpenSSL'
    s.static_framework = true
    s.subspec 'OpenSSL' do |openssl|
        openssl.vendored_frameworks = 'Sources/Libssl.xcframework', 'Sources/Libcrypto.xcframework'
    end
end
