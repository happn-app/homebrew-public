class Officectl < Formula
  desc "Manage multiple user directories (LDAP, Google Apps, etc.)"
  homepage "https://github.com/happn-app/officectl"
  url "https://github.com/happn-tech/officectl.git", :using => :git, :tag => "0.6.8", :revision => "d056da5a97682c7378028ca9fb666f00ca6b8936"
  head "https://github.com/happn-tech/officectl.git", :using => :git, :branch => "develop"

  depends_on :xcode => ["12.4", :build]

  depends_on "openldap"
  depends_on "openssl"

  def install
    # openldap does not support pkg-config, so we have to explicitly add the
    # headers search path and link options to swift build.
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--disable-automatic-resolution",
           "-Xcc", "-I#{HOMEBREW_PREFIX}/opt/openldap/include", "-Xlinker", "-L#{HOMEBREW_PREFIX}/opt/openldap/lib"

    bin.install "./.build/release/officectl"
    bin.install "./.build/release/officectl_odproxy"
    (share+"officectl").install "Public"
    (share+"officectl").install "Resources"
  end

  test do
    system bin/"officectl", "--help"
  end
end
