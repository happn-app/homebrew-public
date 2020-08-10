cask 'fluxui' do
  version '0.1.0'
  sha256 '5339551a38b773777f41827848c3122301581b3937d7c311265b689d421254c1'

  url "https://github.com/happn-tech/FluxUI/releases/download/#{version}/FluxUI.zip"
  name 'FluxUI'
  homepage 'https://github.com/happn-tech/FluxUI'

  app 'FluxUI.app'

  zap trash: [
               '~/Library/Containers/com.happn.FluxUI',
               '~/Library/Application Scripts/com.happn.FluxUI',
             ]
end
