class Officectl < Formula
  desc "Manage multiple user directories (LDAP, Google Apps, etc.)"
  homepage "https://github.com/happn-app/officectl"
  url "git@github.com:happn-app/officectl.git", :using => :git, :tag => "0.6.3", :revision => "67991cd7ae3adf441eb30aff117dc4ff6e90b419"
  head "git@github.com:happn-app/officectl.git", :using => :git, :branch => "develop"

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
