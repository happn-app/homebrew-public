cask 'base64' do
  version '1.0.3'
  sha256 '75960e6ad67a8b8b0d79c869c58e6120b40d56e122d8f3f9b3ee01ba0fd2f5d9'

  url "https://github.com/happn-tech/base64-app/releases/download/Base64-v#{version}/base64.zip"
  name 'Base64'
  homepage 'https://github.com/happn-tech/base64-app'

  app 'base64.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.base64',
               '~/Library/Application Scripts/fr.ftw-and-co.base64',
             ]
end
