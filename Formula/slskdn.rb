class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.75"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.75/slskdn-main-linux-x64.zip"
  sha256 "022bf474430dab5c73c1f42e0021bebfc27244f172c9e0bae6f4856ae012fafd"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.75/slskdn-main-osx-arm64.zip"
      sha256 "930ca6d3e4f5f40993bb95273e4c12961823d1f68d97f00b69fad24fba7b1109"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.75/slskdn-main-osx-x64.zip"
      sha256 "322d51742d34254a76afd6fac34e0b54624d36e37356019641ac12624ddf03b4"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.75/slskdn-main-linux-x64.zip"
    sha256 "022bf474430dab5c73c1f42e0021bebfc27244f172c9e0bae6f4856ae012fafd"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
