cask 'locmapper-linter' do
  version '1.2'
  sha256 '2da0e357530803b01ae7643f4dbc86be5dc1dfe71db3d6e18fda4c653a79172b'

  url "https://github.com/happn-tech/LocMapper/releases/download/LocMapper_Linter%2Frelease%2F#{version}/LocMapper-Linter.zip"
  name 'LocMapper Linter'
  homepage 'https://github.com/happn-tech/LocMapper'

  app 'LocMapper Linter.app'

  zap trash: [
               '~/Library/Containers/com.happn.LocMapper-Linter/',
             ]
end
