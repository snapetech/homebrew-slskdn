class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.71"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.71/slskdn-main-linux-x64.zip"
  sha256 "1e68b89792bbf31358fcb2520d8f6c636f94e600be3b89fd66b613e83f2d97cd"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.71/slskdn-main-osx-arm64.zip"
      sha256 "159d9c9e4b142ae1983811dd86c5ec6d7a0dd6e47388755101170b5a75797f5d"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.71/slskdn-main-osx-x64.zip"
      sha256 "61436bd914a818a99a2c1a18133eb2585ec02b027c948dc67042810900c110c3"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.71/slskdn-main-linux-x64.zip"
    sha256 "1e68b89792bbf31358fcb2520d8f6c636f94e600be3b89fd66b613e83f2d97cd"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
