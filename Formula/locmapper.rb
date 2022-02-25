class Locmapper < Formula
  desc "A utility for working w/ LocMapper (*.lcm) files"
  homepage "https://github.com/happn-tech/LocMapper"
  url "https://github.com/happn-tech/LocMapper.git", :using => :git, :tag => "1.3.2", :revision => "bc1549ef1d8272f1cc2541c7f7f96180e8137204"
  head "https://github.com/happn-tech/LocMapper.git", :using => :git, :branch => "develop"

  depends_on :xcode => ["12.2", :build]

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--disable-automatic-resolution"

    bin.install "./.build/release/locmapper"
  end

  test do
    system bin/"locmapper", "--help"
  end
end
