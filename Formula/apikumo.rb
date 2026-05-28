class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.17/apikumo-darwin-arm64"
      sha256 "0204fd8b824e904d7039acefcac667732b9c02cbb7b8dce90bedee04624d76b0"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.17/apikumo-darwin-x64"
      sha256 "cbec798e4e95509557b06d41552fcd0a1338b9ddbbfe018200d385bd2d45ff77"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.17/apikumo-linux-x64"
      sha256 "a43d136cfc123eb7bd098bc5da18583bfebe4c67fb93fb46c7d75c1f53c1460d"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.17/apikumo-linux-arm64"
      sha256 "ee4cae94a7b33c9ae2b022165807aa980e6931e56cd2a829d4f54b086205b15d"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.17", shell_output("#{bin}/apikumo --version")
  end
end
