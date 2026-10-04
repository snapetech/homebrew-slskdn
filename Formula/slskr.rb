class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.49"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.49/slskr-v0.2.49-aarch64-apple-darwin.tar.gz"
      sha256 "e8d2774ceefaaa11113b0e8959c2a66be50916172a8a5a122211b1761c3c7be3"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.49/slskr-v0.2.49-x86_64-apple-darwin.tar.gz"
      sha256 "cd2061f9f1906a623c8120db7d878e40d3cc987bbe2a0c89d9df2a15cc10ccd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.49/slskr-v0.2.49-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "993316f7d098f4f0588fc2450bc5877b973b27cbb8457623a442198580e8f746"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.49/slskr-v0.2.49-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5581c138998b1a022f7b1508d4b397f9d2de560251801a320b44cddda30e523e"
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
