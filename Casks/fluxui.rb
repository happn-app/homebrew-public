cask 'fluxui' do
  version '0.2.0'
  sha256 '37e5a1b33597dc08134797b70be9fe9683f74812f69454672a2b6187010fac8d'

  url "https://github.com/happn-tech/FluxUI/releases/download/#{version}/FluxUI.zip"
  name 'FluxUI'
  homepage 'https://github.com/happn-tech/FluxUI'

  app 'FluxUI.app'

  zap trash: [
               '~/Library/Containers/com.happn.FluxUI',
               '~/Library/Application Scripts/com.happn.FluxUI',
             ]
end
