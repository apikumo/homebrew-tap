class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.3/apikumo-darwin-arm64"
      sha256 "25120af86f69e3ec5e0084953a3b465e9b28da6ae9c4d6604ade285487b4ebdf"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.3/apikumo-darwin-x64"
      sha256 "db895ed5e9894b1ccff353dc5ade374d7ce8abee1bf47d26cc281d04f03b5347"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.3/apikumo-linux-x64"
      sha256 "e4c891629b4fef9acc6f7686454cbf4bfb4a38b884cf16b6a6da77a7a9ac6660"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.3/apikumo-linux-arm64"
      sha256 "84f8b39b0bc1f09ee20ab56cf396ce2e0fa47e7b21893d714ad42c54b16b7b5d"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.5.3", shell_output("#{bin}/apikumo --version")
  end
end
