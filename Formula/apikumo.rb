class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.4.1/apikumo-darwin-arm64"
      sha256 "629aaf640b66aff1e38c8c8244f758096991d31153c3d462399827afa288fb14"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.4.1/apikumo-darwin-x64"
      sha256 "65fb5e38799d8a43c04dc110dcd196dd0e71677c25e50d03e4e5e0532e338b93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.4.1/apikumo-linux-x64"
      sha256 "806fa9cf61ea19c1038e22df505ac88d13d749590c2983ba913c1a14c34a4fb0"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.4.1/apikumo-linux-arm64"
      sha256 "301100f21448b17f8d5a2ac3c2c52f5007fb7515f27e0a4df5c92b11c63eef37"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/apikumo --version")
  end
end
