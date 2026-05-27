class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.6/apikumo-darwin-arm64"
      sha256 "73a0d7f4f9efc801e50298a33260ea6d4d03add6d5e2c2ad393c18d3d5a69e0f"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.6/apikumo-darwin-x64"
      sha256 "6ae20763d9f5b606b948d3090b8e0c7be8602e0d1bd2e34a4ce1918adf8ad99c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.6/apikumo-linux-x64"
      sha256 "2a8ef1cf34f489332afa657fbf31f12faa9adf781f5d1d1704d69b71109e02e3"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.6/apikumo-linux-arm64"
      sha256 "cc368053ed9897d22286e04188f7bfda2e49649ac72aa0bbf7c9d25bc859163d"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.6", shell_output("#{bin}/apikumo --version")
  end
end
