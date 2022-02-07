class Officectl < Formula
  desc "Manage multiple user directories (LDAP, Google Apps, etc.)"
  homepage "https://github.com/happn-app/officectl"
  url "https://github.com/happn-tech/officectl.git", :using => :git, :tag => "0.7.8", :revision => "0cce5351043cac4201c03de565ef34df2e94eb75"
  head "https://github.com/happn-tech/officectl.git", :using => :git, :branch => "develop"

  depends_on :xcode => ["12.4", :build]

  def install
    # openldap does not support pkg-config, so we have to explicitly add the
    # headers search path and link options to swift build.
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--disable-automatic-resolution"

    bin.install "./.build/release/officectl"
    bin.install "./.build/release/officectl_odproxy"
    bin.install "./.build/release/COpenSSL.framework"
    bin.install "./.build/release/COpenLDAP.framework"
    (share+"officectl").install "Public"
    (share+"officectl").install "Resources"
  end

  test do
    system bin/"officectl", "--help"
  end
end
