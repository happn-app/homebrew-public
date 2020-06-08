cask 'locmapper-linter' do
  version '1.1.1'
  sha256 'e3e429f1ea73796a8665d3146ae77cce1472a873c32eb2f952fe218dfa339296'

  url "https://github.com/happn-tech/LocMapper/releases/download/LocMapper_Linter-v#{version}/LocMapper-Linter.zip"
  name 'LocMapper Linter'
  homepage 'https://github.com/happn-tech/LocMapper'

  app 'LocMapper Linter.app'

  zap trash: [
               '~/Library/Containers/com.happn.LocMapper-Linter/',
             ]
end
