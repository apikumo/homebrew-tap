class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.16/apikumo-darwin-arm64"
      sha256 "7a49ee311d40f86fe13f6d9c2f61cd54d1c0e4c46b6c63ad64564f58872a844a"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.16/apikumo-darwin-x64"
      sha256 "9636c4635a097b96be930e38ae4dd4461ce1e5b45932b29fd5ed3524b7f6a3c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.16/apikumo-linux-x64"
      sha256 "cd3ed00737009b640a8b220a8a249cccabd889343648b27aa33bfe99fd820bf3"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.16/apikumo-linux-arm64"
      sha256 "ac58c94841caeea4a1e295426fd2ba30fd3ca84b2b8ff405c97fe3840a586b8a"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.16", shell_output("#{bin}/apikumo --version")
  end
end
