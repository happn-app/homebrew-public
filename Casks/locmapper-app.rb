cask 'locmapper-app' do
  version '1.3.6'
  sha256 '2d3ca73f3d60670b6f4290aa70880c6537723936d99f894860518966d13b0935'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
