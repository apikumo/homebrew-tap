class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.11/apikumo-darwin-arm64"
      sha256 "d0a72394f3d8040bfc021908dc4a56afd9cfbbb8f2397ceaee7b20c419b42fe9"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.11/apikumo-darwin-x64"
      sha256 "1f8f3edc770ab0d4a7dac6fcbfcd75c11beccf864f55ed231ae77ddfc8612190"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.11/apikumo-linux-x64"
      sha256 "c74d3487f87a5bfd743251194185dc5050bbb4b4603a52d025556a04dfe03ccd"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.11/apikumo-linux-arm64"
      sha256 "272a1e9645919a3454a307968dfbc3ad959b7e28119a65be7cee1a7b144eca1a"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.11", shell_output("#{bin}/apikumo --version")
  end
end
