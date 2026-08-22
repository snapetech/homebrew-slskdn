class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.32"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-aarch64-apple-darwin.tar.gz"
      sha256 "35552b7a9d2a956c92c4d61a3c5afbd554923e579d9dbe006d2614556bbe77a8"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-x86_64-apple-darwin.tar.gz"
      sha256 "ae66c577f79085debab6c79d27e78d0253ae721ce2530245346052ea4b792743"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30187b45b8606fdb4a018174cdf510238adedc23058be53a7217f25ae1fbf651"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f581f93655725f66a302891947760d84973461322e1dc3d523a5dbb9edc325f"
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
