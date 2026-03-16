class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.53"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.53/slskdn-main-linux-x64.zip"
  sha256 "a674eca16ca66d57700e678caaf80f57f0f5a5b8cfe7ca0652291eae318b1517"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.53/slskdn-main-osx-arm64.zip"
      sha256 "4803b9c7d6f224d5c3cf88ea592cc8af34ed4946f3ad7b2734025c0eaf81fe14"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.53/slskdn-main-osx-x64.zip"
      sha256 "4c180e0555bd17e6c72af5648a2ec3574efebab2ab8765ead7dc07a80de3684a"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.53/slskdn-main-linux-x64.zip"
    sha256 "a674eca16ca66d57700e678caaf80f57f0f5a5b8cfe7ca0652291eae318b1517"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
