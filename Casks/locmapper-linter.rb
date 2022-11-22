cask 'locmapper-linter' do
  version '1.2.2'
  sha256 '68e69ed9d33b6e1933eb763aaf468f82d89a94f904cfd321ef169b6cfcee65d6'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper_Linter%2Frelease%2F#{version}/LocMapper-Linter.zip"
  name 'LocMapper Linter'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper Linter.app'

  zap trash: [
               '~/Library/Containers/com.happn.LocMapper-Linter/',
             ]
end
