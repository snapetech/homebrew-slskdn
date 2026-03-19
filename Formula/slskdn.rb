class Slskdn < Formula
  desc "Batteries-included Soulseek web client"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "0.24.5-slskdn.72"
  url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.72/slskdn-main-linux-x64.zip"
  sha256 "37258a03f7ad2dbfaa836eeacf778a9e9f9654e570799da48d14423bc0b3aa5d"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.72/slskdn-main-osx-arm64.zip"
      sha256 "62544a796199c35cfd148af5d9c5ab288f7673a49c10205c366f16395934059d"
    end
    on_intel do
      url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.72/slskdn-main-osx-x64.zip"
      sha256 "b60700cebc63f1ca04c812c062c52c4cc1fe0aa43e3ba5c632429061e2f1b827"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdn/releases/download/0.24.5-slskdn.72/slskdn-main-linux-x64.zip"
    sha256 "37258a03f7ad2dbfaa836eeacf778a9e9f9654e570799da48d14423bc0b3aa5d"
  end
  conflicts_with "slskdn-dev", because: "both install slskd binaries"
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
