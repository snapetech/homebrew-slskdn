class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.18"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.18/slskr-v0.2.18-aarch64-apple-darwin.tar.gz"
      sha256 "df455f14ca937d7f5dfb919d9f50f3b4d7577a63cc86cdf6bf4c0a3f5f3dfa60"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.18/slskr-v0.2.18-x86_64-apple-darwin.tar.gz"
      sha256 "b2630b22c5acd16c168623b61815896ae0231bef46aff62a9fcabf189488f63a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.18/slskr-v0.2.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0cdcb60c800524c6c0e1a412d7ba4ffe17b771c3bf8cd0034697da34608097d"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.18/slskr-v0.2.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d4a1b58eb6ba47bb814c7ba544aa6948978754077db1ccbe7fc18cbee0e61c3"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install libexec/"slskr"
  end

  test do
    assert_match "slskr", shell_output("#{bin}/slskr version")
  end
end
