class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.9/apikumo-darwin-arm64"
      sha256 "985a8a32ead567c3dbada736b3ab6a13cc3602df8f002df63cd3201f212a1ab9"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.9/apikumo-darwin-x64"
      sha256 "22f369c229554f5021f6d7da0263c65c083a9865a532835b76676f997453a6bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.9/apikumo-linux-x64"
      sha256 "eb46442601f5cd85db30778003d43f6b3fca01c4d2cc315f72ff2e5443e3285c"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.9/apikumo-linux-arm64"
      sha256 "5c7c0ec3afefcce99d933f81a847975a5aa845656191027baf71e48197d743a5"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.9", shell_output("#{bin}/apikumo --version")
  end
end
