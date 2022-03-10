# frozen_string_literal: true

# hagvtool formula
cask "hagvtool" do
  name "hagvtool"
  homepage "https://github.com/happn-app/XcodeTools"
  desc "Utility for working with versions in Xcode projects"

  version "0.2.1"
  sha256 "433f5142159b8d5e50b5be6c7a10952b46a768c14470f4626b81c23847edd994"
  url "https://github.com/happn-app/XcodeTools/releases/download/#{version}/hagvtool.tar.bz2"

  binary "hagvtool"
end
