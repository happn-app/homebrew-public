class Officectl < Formula
  desc "Manage multiple user directories (LDAP, Microsoft Office 365, Google Apps, etc.)"
  homepage "https://github.com/happn-app/officectl"
  url "https://github.com/happn-app/officectl.git", using: :git, tag: "0.10.7", revision: "290d5eff95e0e3a2eaedb74635fca97fd229b3e8"
  head "https://github.com/happn-app/officectl.git", using: :git, branch: "develop"

  depends_on xcode: ["15.0", :build]

  def install
    # openldap does not support pkg-config, so we have to explicitly add the
    # headers search path and link options to swift build.
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--disable-automatic-resolution"

    # officectl_odproxy does not support completion script generation (yet),
    # so we do not add it in this array and install it directly.
    bin.install "./.build/release/officectl-odproxy"
    bins = ["./.build/release/officectl"]
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
