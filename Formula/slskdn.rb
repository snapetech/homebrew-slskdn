class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.61"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.61/slskdn-main-linux-x64.zip"
  sha256 "3f45468e999a0301e94946ef6ac0a062595cb663605d7e4f6eff1725a1255540"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.61/slskdn-main-osx-arm64.zip"
      sha256 "78d2099412228fe6d29f4c8f92eabcb03b46ce4a01bf07ff5a5da515574cc222"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.61/slskdn-main-osx-x64.zip"
      sha256 "885a4f5dc7c88fed0e33c2e72df5fe5e2938ee6c9f5151caa18e194d96831413"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.61/slskdn-main-linux-x64.zip"
    sha256 "3f45468e999a0301e94946ef6ac0a062595cb663605d7e4f6eff1725a1255540"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
