cask 'base64' do
  version '1.0.2'
  sha256 '7280148490262ce7fea4fd25e7a31614ecde8fdd7bb9ec252fb1513a1416d116'

  url "https://github.com/happn-tech/base64-app/releases/download/Base64-v#{version}/base64.zip"
  name 'Base64'
  homepage 'https://github.com/happn-tech/base64-app'

  app 'base64.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.base64',
               '~/Library/Application Scripts/fr.ftw-and-co.base64',
             ]
end
