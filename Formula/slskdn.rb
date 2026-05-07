class Slskdn < Formula
  desc "Unofficial slskd fork with batteries-included Soulseek features"
  homepage "https://github.com/snapetech/slskdn"
  license "AGPL-3.0-or-later"
  version "2026050711-slskdn.231"
  url "https://github.com/snapetech/slskdN/releases/download/2026050711-slskdn.231/slskdn-main-linux-glibc-x64.zip"
  sha256 "a62f5e5596a7a11db49494d7b577360b9204487825aad680778c8620e4bb7717"
  on_macos do
    on_arm do
      url "https://github.com/snapetech/slskdN/releases/download/2026050711-slskdn.231/slskdn-main-osx-arm64.zip"
      sha256 "dfc1764cff0d4a642a9f49d48b9e98f50d2572d65f800e69c65e3538f315c761"
    end
    on_intel do
      url "https://github.com/snapetech/slskdN/releases/download/2026050711-slskdn.231/slskdn-main-osx-x64.zip"
      sha256 "b742187cd91d796087052e216cd841af8042c1a429d250b5923936d056311c79"
    end
  end
  on_linux do
    url "https://github.com/snapetech/slskdN/releases/download/2026050711-slskdn.231/slskdn-main-linux-glibc-x64.zip"
    sha256 "a62f5e5596a7a11db49494d7b577360b9204487825aad680778c8620e4bb7717"
  end
  def install
    libexec.install Dir["*"]
    (bin/"slskd").write_exec_script libexec/"slskd"
    (bin/"slskdn").write_exec_script libexec/"slskd"
  end
end
