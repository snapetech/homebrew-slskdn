class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.108"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.108/slskdn-main-linux-x64.zip"
  sha256 "ac38f506435c15e59f19401672a88d8b501296544cbf04ab9811dbb805624b33"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.108/slskdn-main-osx-arm64.zip"
      sha256 "d214db148dc2bf0f49a151ccd17e13dd8fba0ea9486fd53ba12781064bb9ad5b"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.108/slskdn-main-osx-x64.zip"
      sha256 "38c9687f99743d167f5e51aced499072c955621b46277611ed269bcab19d2360"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.108/slskdn-main-linux-x64.zip"
    sha256 "ac38f506435c15e59f19401672a88d8b501296544cbf04ab9811dbb805624b33"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
