cask 'locmapper-app' do
  version '1.3.2'
  sha256 '3e5a3be97ec32fb56ec0760755ac09eab11c9a13b31d5dc61886eff318e08a32'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
