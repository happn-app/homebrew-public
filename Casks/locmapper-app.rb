cask 'locmapper-app' do
  version '1.3.1'
  sha256 'c982982ad66e40ab63aba02af6c8f2632652d8b37407174b8a9e97afa784065f'

  url "https://github.com/happn-tech/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-tech/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
