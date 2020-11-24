cask 'fluxui' do
  version '0.2.1'
  sha256 '2f52e509693b155c12bd64577a867f6bfb339790f1bd87433a3377d1dd3256cd'

  url "https://github.com/happn-tech/FluxUI/releases/download/#{version}/FluxUI.zip"
  name 'FluxUI'
  homepage 'https://github.com/happn-tech/FluxUI'

  app 'FluxUI.app'

  zap trash: [
               '~/Library/Containers/com.happn.FluxUI',
               '~/Library/Application Scripts/com.happn.FluxUI',
             ]
end
