class Officectl < Formula
  desc "Manage multiple user directories (LDAP, Google Apps, etc.)"
  homepage "https://github.com/happn-app/officectl"
  url "https://github.com/happn-tech/officectl.git", :using => :git, :tag => "0.7.6", :revision => "3886bcf69666d99461f8478b8fb216ace2717009"
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
