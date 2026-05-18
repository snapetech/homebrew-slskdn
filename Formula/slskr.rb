class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.16"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.16/slskr-v0.2.16-aarch64-apple-darwin.tar.gz"
      sha256 "ce7b44d2fa9300354c16aea2bb33945f1f893a97cded57771908a7489ec922ff"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.16/slskr-v0.2.16-x86_64-apple-darwin.tar.gz"
      sha256 "7963c5ee8f291cb54f13c8299ed79bfd16f466bf78d3a9e1b7dad7884331e114"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.16/slskr-v0.2.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5f91c435690da19d352989ccd7c7e01903258a7cc71c5ee091a9ec542f26815"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.16/slskr-v0.2.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f4da14283c6be381e4dcebb9d939f6afacb1568ab005acafb4f5d3771567286"
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
