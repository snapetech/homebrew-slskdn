class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.26"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.26/slskr-v0.2.26-aarch64-apple-darwin.tar.gz"
      sha256 "4d368b0011a074d1f91104e4e2aaa9f87c0908ce19a097c9b7e4ed63307345f9"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.26/slskr-v0.2.26-x86_64-apple-darwin.tar.gz"
      sha256 "af7fdf00225ef57235423e943cc769945c60eaf1c813e87b78ff47758f894681"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.26/slskr-v0.2.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9497ad4d018e64d6c827b3ac0c9e22f6211085c9b9c95d3ee1ee1e568283c4fe"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.26/slskr-v0.2.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c226fc98b95e930f42e54af32821d53453f8df6b32d0fb8d2498463ff53e6d5d"
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
