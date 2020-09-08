cask 'fluxui' do
  version '0.1.1'
  sha256 'e44b435654a8884ac3b575c153ebbdc7eca79342ac78e2cf2ab002869081ba9f'

  url "https://github.com/happn-tech/FluxUI/releases/download/#{version}/FluxUI.zip"
  name 'FluxUI'
  homepage 'https://github.com/happn-tech/FluxUI'

  app 'FluxUI.app'

  zap trash: [
               '~/Library/Containers/com.happn.FluxUI',
               '~/Library/Application Scripts/com.happn.FluxUI',
             ]
end
