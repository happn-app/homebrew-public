cask 'locmapper' do
  version '1.2.4'
  sha256 '228fa9a97d385899ddd6e7142d668f5f3192fd4487f410e2d22e44815409aafb'

  url "https://github.com/happn-tech/LocMapper/releases/download/LocMapper-30/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-tech/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
