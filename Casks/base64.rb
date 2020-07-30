cask 'base64' do
  version '1.0'
  sha256 '217003f2f92a638643caace9dbe527081d6c98341a6f9ebeac447926c7f5c1a8'

  url "https://github.com/happn-tech/base64-app/releases/download/Base64-v#{version}/base64.zip"
  name 'Base64'
  homepage 'https://github.com/happn-app/base64-app'

  app 'base64.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.base64',
               '~/Library/Application Scripts/fr.ftw-and-co.base64',
             ]
end
