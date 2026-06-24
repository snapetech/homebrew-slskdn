class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.25"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.25/slskr-v0.2.25-aarch64-apple-darwin.tar.gz"
      sha256 "3181812a58aeeb442294c5012175f2b45f01be63c5fac1ff9c8f72911745c7eb"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.25/slskr-v0.2.25-x86_64-apple-darwin.tar.gz"
      sha256 "1f571d4bb9aa1de6994d7cb586e9b96ce8bb90385ba1e52225e8bc83bc80ee98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.25/slskr-v0.2.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d188267665713008b337936401a020b05cd1caab7be112e08c73658741b1fee"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.25/slskr-v0.2.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c20b1c88ee3dd229fdf6b327f3ca23f9bc73de28a514ece64412a2d067f66d6b"
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
