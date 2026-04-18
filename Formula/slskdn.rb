class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.147"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.147/slskdn-main-linux-glibc-x64.zip"
  sha256 "d32cdabf7af35792bc989bc904c1753775e1e148f2072d4ec052cca1736d0aaa"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.147/slskdn-main-osx-arm64.zip"
      sha256 "86b0a9f3b4b128a511a425e1e3c144d390ccefba7173185864a982382e2ce9e6"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.147/slskdn-main-osx-x64.zip"
      sha256 "f94ead8b739d724fa3e113ba55418f02632bd0acaa1df603da5d9a9f9062305c"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.147/slskdn-main-linux-glibc-x64.zip"
    sha256 "d32cdabf7af35792bc989bc904c1753775e1e148f2072d4ec052cca1736d0aaa"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
