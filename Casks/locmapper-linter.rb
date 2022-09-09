cask 'locmapper-linter' do
  version '1.2.1'
  sha256 'f7ac0519b78d11144c41612382781cd3e95622527ba6ed6262e494693f7be04d'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper_Linter%2Frelease%2F#{version}/LocMapper-Linter.zip"
  name 'LocMapper Linter'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper Linter.app'

  zap trash: [
               '~/Library/Containers/com.happn.LocMapper-Linter/',
             ]
end
