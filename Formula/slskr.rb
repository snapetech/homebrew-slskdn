class Slskr < Formula
  desc "Rust Soulseek daemon with bundled Web UI"
  homepage "https://github.com/snapetech/slskr"
  license "AGPL-3.0-only"
  version "0.2.21"

  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.21/slskr-v0.2.21-aarch64-apple-darwin.tar.gz"
      sha256 "768895a9eaca40aa85b9876a556eda1f4556715d6ee9ba0e4d6aa070587afb25"
    end
    on_intel do
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.21/slskr-v0.2.21-x86_64-apple-darwin.tar.gz"
      sha256 "ec45baa56735b16f9624665f8a6070e5bf27033f6b9193a6a2919915b322bcee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.21/slskr-v0.2.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2e6614bee1af4404f054e7a123e67b1e5f953541381099388bf32bfd396e9565"
    else
      url "https://github.com/snapetech/slskr/releases/download/release-v0.2.21/slskr-v0.2.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0ed5dd1c219a700c061dee6623a51a229d84e7364958c068a6e02bafaf51805"
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
