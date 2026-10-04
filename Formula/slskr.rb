class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.47"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.47/slskr-v0.2.47-aarch64-apple-darwin.tar.gz"
      sha256 "a18327ec92dbb453c8aac5ec3f7fcd9157729f1d265f31a9d21c5c6d1683f5d7"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.47/slskr-v0.2.47-x86_64-apple-darwin.tar.gz"
      sha256 "b611cba84ae60187aba6790396b37dda3fd9478c514d2b7eaeaee97934c49684"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.47/slskr-v0.2.47-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e96215c4a50ff2c8989a4f70a3c34945453b2828e58df918b865ad93506a857f"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.47/slskr-v0.2.47-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff46280f7ba88d73ac6205207fc1581bbb421d8b60b08c8b19af281acac443cb"
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
