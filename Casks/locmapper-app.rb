cask 'locmapper-app' do
  version '1.3'
  sha256 '17d5cec0c30384fd649d9acb41e72c8e4b6d822b99b714b19edc326c1779e2a4'

  url "https://github.com/happn-tech/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-tech/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
