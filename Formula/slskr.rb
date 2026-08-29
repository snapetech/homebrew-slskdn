class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.36"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.36/slskr-v0.2.36-aarch64-apple-darwin.tar.gz"
      sha256 "28966c0800f71baa431a694898fe2ec967724ec8bf20c1247de4e9ba9ea75b07"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.36/slskr-v0.2.36-x86_64-apple-darwin.tar.gz"
      sha256 "d5a48df8bc69de0905b10f36f56e8a3b7c8dcee8e2c68f74dd4faf0fd9fd6baa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.36/slskr-v0.2.36-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "529822e94b7701a30b8cd93eab1559f249f9d6590c44706add17b0ee45024f05"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.36/slskr-v0.2.36-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2915289b109ec05ac4685b40722a0e35ac962657674c43f7e205351593094cd8"
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
