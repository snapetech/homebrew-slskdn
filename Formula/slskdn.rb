class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.62"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.62/slskdn-main-linux-x64.zip"
  sha256 "d48325423324c405415deb83685e26aebb66ddf91daa8d87a5841742b3d5671e"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.62/slskdn-main-osx-arm64.zip"
      sha256 "f4356d4021150898758bec37bd56cc525b5b469aec4b22d3e2eb44e2ba2ac29d"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.62/slskdn-main-osx-x64.zip"
      sha256 "6a8279799a676519bed8c2c98733593210dbe3acef0ae0177b9679d2ce2c9b8e"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.62/slskdn-main-linux-x64.zip"
    sha256 "d48325423324c405415deb83685e26aebb66ddf91daa8d87a5841742b3d5671e"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
