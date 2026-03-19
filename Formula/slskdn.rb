class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.64"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.64/slskdn-main-linux-x64.zip"
  sha256 "3981276ef4261c11bd1b42084d1ddeb3801af0aa1f52610c0c18f21bc5ab5fa2"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.64/slskdn-main-osx-arm64.zip"
      sha256 "9f13785a88ea9862aaa978eebcfc9e8f40fd3bbd91b8265325e0d9c2e30bff2b"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.64/slskdn-main-osx-x64.zip"
      sha256 "be2c44c2c5ead41a4f6e4c865e9c513433f5e1af5bc41509321b203acfb5dbcc"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.64/slskdn-main-linux-x64.zip"
    sha256 "3981276ef4261c11bd1b42084d1ddeb3801af0aa1f52610c0c18f21bc5ab5fa2"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
