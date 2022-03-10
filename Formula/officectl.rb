class Officectl < Formula
  desc "Manage multiple user directories (LDAP, Google Apps, etc.)"
  homepage "https://github.com/happn-app/officectl"
  url "https://github.com/happn-app/officectl.git", using: :git, tag: "0.7.9", revision: "3a0f8ddf18dda546b4c011b7849b4295acb57d59"
  revision 1
  head "https://github.com/happn-app/officectl.git", using: :git, branch: "develop"

  depends_on xcode: ["12.4", :build]

  def install
    # openldap does not support pkg-config, so we have to explicitly add the
    # headers search path and link options to swift build.
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--disable-automatic-resolution"

    bins = ["./.build/release/officectl", "./.build/release/officectl_odproxy"]
    bins.each do |b|
      # Generate and install bash completion.
      output = Utils.safe_popen_read(b, "--generate-completion-script", "bash")
      (bash_completion/File.basename(b)).write output
      # Generate and install zsh completion.
      output = Utils.safe_popen_read(b, "--generate-completion-script", "zsh")
      (zsh_completion/("_" + File.basename(b))).write output
      # Generate and install fish completion.
      output = Utils.safe_popen_read(b, "--generate-completion-script", "fish")
      (fish_completion/File.basename(b)).write output

      # Install the binary after completion is generated.
      bin.install b
    end

    bin.install "./.build/release/COpenSSL.framework"
    bin.install "./.build/release/COpenLDAP.framework"

    (share+"officectl").install "Public"
    (share+"officectl").install "Resources"
  end

  test do
    system bin/"officectl", "--help"
  end
end
