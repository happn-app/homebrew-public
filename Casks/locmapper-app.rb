cask 'locmapper-app' do
  version '1.3.4'
  sha256 '0914d77066de88021a795c835b9e7c1509608b98cbbeb82b2b04d16982d80083'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
