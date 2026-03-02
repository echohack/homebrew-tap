class GitHeat < Formula
  desc "Analyze the health of any git repository"
  homepage "https://github.com/echohack/git-heat"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/echohack/git-heat/releases/download/v0.0.0/git-heat-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/echohack/git-heat/releases/download/v0.0.0/git-heat-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/echohack/git-heat/releases/download/v0.0.0/git-heat-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "git-heat"
  end

  test do
    assert_match "git-heat", shell_output("#{bin}/git-heat --version")
  end
end
