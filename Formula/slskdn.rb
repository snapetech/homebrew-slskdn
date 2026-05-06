class Slskdn < Formula
  desc "Unofficial slskd fork with batteries-included Soulseek features"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "2026050600-slskdn.229"
  url "https://github.com/snapetech/slskdN/releases/download/2026050600-slskdn.229/slskdn-main-linux-glibc-x64.zip"
  sha256 "a4bb6b11ddd9ffbc55a96df8fd493f1000bb8f631b4ed15850629147c54d8b48"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdN/releases/download/2026050600-slskdn.229/slskdn-main-osx-arm64.zip"
      sha256 "9912df8f6abe17926e27f593586ddffb4044e49dfc9d73cfb9ba63149f5f95ae"
    end
    on_intel do
      url "https://github.com/snapetech/slskdN/releases/download/2026050600-slskdn.229/slskdn-main-osx-x64.zip"
      sha256 "bda9acb660fbb9c20904c7858d05280c7e40e727a6dc5df814cf26e5e919ba47"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdN/releases/download/2026050600-slskdn.229/slskdn-main-linux-glibc-x64.zip"
    sha256 "a4bb6b11ddd9ffbc55a96df8fd493f1000bb8f631b4ed15850629147c54d8b48"
  end
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
