class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.27"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.27/slskr-v0.2.27-aarch64-apple-darwin.tar.gz"
      sha256 "e2fe43d22e66ed6b11b2dc0620dbec98ab6771df1f112ce947475261116e49d6"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.27/slskr-v0.2.27-x86_64-apple-darwin.tar.gz"
      sha256 "19224c0aeab0eefc560d3d3776a389fc546aa0fcfe993621f83f88c7dc1f20d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.27/slskr-v0.2.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d652669944f156610237544e8708bc1ca5926297444d6431128dfd822af0576"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.27/slskr-v0.2.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19a9af493536bb91be2b1d7c0ff288d86aa593bf101c4215d2b650266d3de335"
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
