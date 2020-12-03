class Locmapper < Formula
  desc "A utility for working w/ LocMapper (*.lcm) files"
  homepage "https://github.com/happn-tech/LocMapper"
  url "https://github.com/happn-tech/LocMapper.git", :using => :git, :tag => "1.2.5", :revision => "28914c8bc16ff35313bf67c985774c825a2ef80a"
  head "https://github.com/happn-tech/LocMapper.git", :using => :git, :branch => "develop"

  depends_on :xcode => ["11.5", :build]

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--disable-automatic-resolution"

    bin.install "./.build/release/locmapper"
  end

  test do
    system bin/"locmapper", "--help"
  end
end
