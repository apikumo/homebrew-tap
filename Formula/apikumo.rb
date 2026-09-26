class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.2/apikumo-darwin-arm64"
      sha256 "495879a3de6427de595af0b33a407c61d64ccba6fa1ae63e453ced8dc3901082"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.2/apikumo-darwin-x64"
      sha256 "97f1f4c16851655b941ec9dc3c1c2fe783712452aedd6f59992fb9814dc659c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.2/apikumo-linux-x64"
      sha256 "7db5c936e02f97c48dcc664f87529a8ddd6d1d344949842ffce64e56d21e19a7"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.2/apikumo-linux-arm64"
      sha256 "5b040793ab2feedbb434230d4cec2750938d746dafdc4f6b939f6259281f42fc"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/apikumo --version")
  end
end
