class GitHeat < Formula
  desc "Analyze the health of any git repository"
  homepage "https://github.com/echohack/homebrew-tap"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/echohack/homebrew-tap/releases/download/v0.3.0/git-heat-aarch64-apple-darwin.tar.gz"
    sha256 "23b2c8f466dfbe21b94944c6dd4cc4147772a01cbd018564170ba0b8427fd23b"
  end

  on_linux do
    url "https://github.com/echohack/homebrew-tap/releases/download/v0.3.0/git-heat-x86_64-unknown-linux-musl.tar.gz"
    sha256 "30a0d922628a96797437bc7bc48142a4346ca12b8bb534bc436ee9f4aeb49a37"
  end

  def install
    bin.install "git-heat"
  end

  test do
    assert_match "git-heat", shell_output("#{bin}/git-heat --version")
  end
end
