class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.8/apikumo-darwin-arm64"
      sha256 "53045fd6337402dab914b2377921ecfd52c7c630e55977983ec17402e3e7b195"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.8/apikumo-darwin-x64"
      sha256 "71c24a55353b381d45c1dd2da771a0e0d35bd353f82f9ff7a0bd244890ffce06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.8/apikumo-linux-x64"
      sha256 "f0601f30817309219c7ac503b60a2b05941275a570ddf8104c89baf449f00657"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.8/apikumo-linux-arm64"
      sha256 "a1f56549dd13bec99ea747ce3cfeea60a9ad7824d757ad968450ee7825d7a1ba"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.8", shell_output("#{bin}/apikumo --version")
  end
end
