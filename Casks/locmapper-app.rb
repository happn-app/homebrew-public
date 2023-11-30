cask 'locmapper-app' do
  version '1.3.7'
  sha256 'fa6468760e0b5f5a75a16790708ac20e784cba188cdd430c6a7031a55c43283d'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper%2Frelease%2F#{version}/LocMapperApp.zip"
  name 'LocMapper'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper.app'

  zap trash: [
               '~/Library/Containers/fr.ftw-and-co.LocMapperApp/',
             ]
end
