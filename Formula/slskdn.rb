class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.107"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.107/slskdn-main-linux-x64.zip"
  sha256 "d7c3453769b38544fc12823c09cdde1f33d87235867d741234bd21eb3c236e23"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.107/slskdn-main-osx-arm64.zip"
      sha256 "6b1ec71b82b94f4d50f5e2a26a590c20a84b093acaba7d2ccef52e54a086a638"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.107/slskdn-main-osx-x64.zip"
      sha256 "176238491f5898e9c2164f02e618dcffe3946cb3da35c90c8654da1051a91136"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.107/slskdn-main-linux-x64.zip"
    sha256 "d7c3453769b38544fc12823c09cdde1f33d87235867d741234bd21eb3c236e23"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
