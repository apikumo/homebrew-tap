class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.13/apikumo-darwin-arm64"
      sha256 "ba1140b42fc6f0c1e8b0e43d10166f6f70289d8dabc9b2bd66846012f8932591"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.13/apikumo-darwin-x64"
      sha256 "93e373179799cf3b1a09f6995fd1c00d72cf28a3b4be3c4701b2e2e386b888f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.13/apikumo-linux-x64"
      sha256 "17c97098f42b21bfc778b174ec71e37b2b2a4e94f9901372584108f4790f9067"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.13/apikumo-linux-arm64"
      sha256 "b2e0aba704bf166b75f5e3b66a9eaa9411ea5888b086c09499158b9aa15207bc"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.13", shell_output("#{bin}/apikumo --version")
  end
end
