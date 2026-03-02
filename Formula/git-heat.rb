class GitHeat < Formula
  desc "Analyze the health of any git repository"
  homepage "https://github.com/echohack/homebrew-tap"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/echohack/homebrew-tap/releases/download/v0.2.0/git-heat-aarch64-apple-darwin.tar.gz"
    sha256 "a6d918b44d7b74a76884f5e1359ea1f9765e1ec9717734591778d02efe67f382"
  end

  on_linux do
    url "https://github.com/echohack/homebrew-tap/releases/download/v0.2.0/git-heat-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3fd20c58b77a9946841f7feff124994e9679f3e8c91b95b9a39ac01c4afd43a4"
  end

  def install
    bin.install "git-heat"
  end

  test do
    assert_match "git-heat", shell_output("#{bin}/git-heat --version")
  end
end
