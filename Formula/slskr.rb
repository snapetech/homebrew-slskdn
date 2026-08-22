class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.32"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-aarch64-apple-darwin.tar.gz"
      sha256 "e2c5d3cb03f63c8175da21683556973ddfc92c9b74e1474f538ccd88894741bd"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-x86_64-apple-darwin.tar.gz"
      sha256 "58943667fe232756f55024d2829eb7932830618e8667b205ced6cde39f2d71ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77c5de40da434626b8d19a7ae3a272d29c2cd7290038014cc7f8a35043260417"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.32/slskr-v0.2.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed53cfdb10883a7aa96d3e70a4b3adc1c6ffdde509968bb9435744ae88780a4e"
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
