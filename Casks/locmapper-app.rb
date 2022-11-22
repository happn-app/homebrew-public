cask 'locmapper-app' do
  version '1.3.5'
  sha256 '4a4bbba6d95d8b7f562b0aca048cd551e6010ba6d1b23f64a61fa7d7defc306e'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
