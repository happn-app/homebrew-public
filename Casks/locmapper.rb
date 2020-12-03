cask 'locmapper' do
  version '1.2.4'
  sha256 'db3d61ea5db1646ceccee7d373abff09a39610bf07c9498eea287e011c36bd8a'

  url "https://github.com/happn-tech/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-tech/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
