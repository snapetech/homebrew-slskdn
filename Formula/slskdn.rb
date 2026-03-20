class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.73"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.73/slskdn-main-linux-x64.zip"
  sha256 "280b22eff2eb5144350846b87aec05eb6df2abf76dd82f71f0675c5766992c20"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.73/slskdn-main-osx-arm64.zip"
      sha256 "636d84ac90268bd4e9b19a570e9ecf7f9e0e0f9d58db1c4b0294918a547e3829"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.73/slskdn-main-osx-x64.zip"
      sha256 "cb3ef2cd109f804bb204fe036a0a211a697e825b60f0e2a8ff9f38ae8a0b4cde"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.73/slskdn-main-linux-x64.zip"
    sha256 "280b22eff2eb5144350846b87aec05eb6df2abf76dd82f71f0675c5766992c20"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
