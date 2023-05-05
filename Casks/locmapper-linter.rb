cask 'locmapper-linter' do
  version '1.2.3'
  sha256 'f157e07077d20526fda420223954559ad8aad795e1bad84594b798210eb109df'

  url "https://github.com/happn-app/LocMapper/releases/download/LocMapper_Linter%2Frelease%2F#{version}/LocMapper-Linter.zip"
  name 'LocMapper Linter'
  homepage 'https://github.com/happn-app/LocMapper'

  app 'LocMapper Linter.app'

  zap trash: [
               '~/Library/Containers/com.happn.LocMapper-Linter/',
             ]
end
