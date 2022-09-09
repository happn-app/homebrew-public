class Locmapper < Formula
  desc "Utility for working w/ LocMapper (*.lcm) files"
  homepage "https://github.com/happn-app/LocMapper"
  url "https://github.com/happn-app/LocMapper.git", using: :git, tag: "1.3.4", revision: "ed8de158bfc7ca93c978455b7ef41ff45f537c08"
  head "https://github.com/happn-app/LocMapper.git", using: :git, branch: "develop"

  depends_on xcode: ["13.4", :build]

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "--disable-automatic-resolution"

    bins = ["./.build/release/locmapper"]
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
  end

  test do
    system bin/"locmapper", "--help"
  end
end
