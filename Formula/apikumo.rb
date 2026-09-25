class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.4.2/apikumo-darwin-arm64"
      sha256 "ee01a3f6b48e457c05e1edfadff72421ccd5f627f55b29e21d917bbcd46249fb"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.4.2/apikumo-darwin-x64"
      sha256 "6954bb4148556bed0657d6b25f825b4e7c02154a4fb084760ecd309463f91a52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.4.2/apikumo-linux-x64"
      sha256 "5bf951f04a7276ac8f0246fb9c022736ed17586a96171447de7e64f3c1debff4"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.4.2/apikumo-linux-arm64"
      sha256 "61c41098d3a94c0c7bce9dd676b79f6cc69cb13f3156c42929a33aae1d22345f"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/apikumo --version")
  end
end
