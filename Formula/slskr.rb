class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.23"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.23/slskr-v0.2.23-aarch64-apple-darwin.tar.gz"
      sha256 "6f4fff7b8dfe07c3ed4a51fc2e9ac3520e4c2d59f8d74a5f344c5d4814001843"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.23/slskr-v0.2.23-x86_64-apple-darwin.tar.gz"
      sha256 "574debbdb3bf16bce6a500f590bcd196ea05331f8026dc4390b66b03158fbccf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.23/slskr-v0.2.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3e9580f77de4089978974eefdfe11c74af1cc1cddde7610d8f43dfc8ff92781"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.23/slskr-v0.2.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60debae1265c8f054efa11de24276642a0d0f01778fdc3589833dcf59675614a"
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
