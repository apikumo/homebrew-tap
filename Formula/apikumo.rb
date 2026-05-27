class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.10/apikumo-darwin-arm64"
      sha256 "f1811da977ac4b7fcfd23108b43e2c3e468422c1bdfe434f613068c6ff252bcc"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.10/apikumo-darwin-x64"
      sha256 "0b7c3ab0e20563ad1d1f879c63bb48fc592a911bee8a40af26b95073c0c1da2f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.10/apikumo-linux-x64"
      sha256 "4836ef130b997eee23eca9c957dfdebb856fb33021d596b96e3cb28229cdd437"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.10/apikumo-linux-arm64"
      sha256 "22187ebcc806c951a2f87046f8046c16f685f394870d5e0581355ddb263f27b8"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.10", shell_output("#{bin}/apikumo --version")
  end
end
