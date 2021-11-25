cask 'base64' do
  version '1.0.3'
  sha256 'b500a84e625c68fddf6f8f89048abefccfde166560732d19b716aa00e2a341ea'

  url "https://github.com/happn-tech/base64-app/releases/download/Base64-v#{version}/base64.zip"
  name 'Base64'
  homepage 'https://github.com/happn-tech/base64-app'

  app 'base64.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.base64',
               '~/Library/Application Scripts/fr.ftw-and-co.base64',
             ]
end
