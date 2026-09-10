class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.4.0/apikumo-darwin-arm64"
      sha256 "24135a7c173b012416dc50728a0cdd89a698ebd80a6e8455ac432efe6d499995"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.4.0/apikumo-darwin-x64"
      sha256 "ebc16ea65f290685f08786da9089c2d07ec21d15d4d588097cb12db7b08d4e8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.4.0/apikumo-linux-x64"
      sha256 "d3d4ce833de62f13d5f9ece63463a3562403748110632466356345bb88b59bd5"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.4.0/apikumo-linux-arm64"
      sha256 "073b8f7b08e41d90256701df5cfaaf19df1e02f46b19d1b291ababcf97fd9dee"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/apikumo --version")
  end
end
