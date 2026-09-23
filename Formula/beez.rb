class Beez < Formula
  desc "Run coding agents and commands in sandboxed workflows"
  homepage "https://github.com/mcuste/beez"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mcuste/beez/releases/download/v0.1.0/beez-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9b7e2c2873e6de2942364ff0d15c3cebb2ec925b3a12332143a464c17a6a5aa3"
    end
    on_intel do
      url "https://github.com/mcuste/beez/releases/download/v0.1.0/beez-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "443330d384f3cbe73efc4189dd67360af882aa2f0de77c675a5d2993ccdf28a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mcuste/beez/releases/download/v0.1.0/beez-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd0c22ae4907d4f6f9dcfda4447a45e0710eb92f26d62521cdf634d953d71e06"
    end
    on_intel do
      url "https://github.com/mcuste/beez/releases/download/v0.1.0/beez-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e3e1ec89a3dcd4a526f98a7648d2008dfe28dbbc3ebcb06a7d2b0962e38202e"
    end
  end

  def install
    bin.install "beez"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beez --version")
  end
end
