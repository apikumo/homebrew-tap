class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.2.0/apikumo-darwin-arm64"
      sha256 "4c056743caf299c08caefa48e30ffb2e7ab5f0ebc4a8b0f733335028d6f68e11"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.2.0/apikumo-darwin-x64"
      sha256 "2e35ff54ea12b6a412e33600c63ac3de54ef7689418224f12fa03ba50f17cf51"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.2.0/apikumo-linux-x64"
      sha256 "59a8c66337119cd3afe283cb0f7994ae4990d77099c3a88dad63b5f2704a0b79"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.2.0/apikumo-linux-arm64"
      sha256 "c60d65ba51311953ce29958f88dce9eb63dc0d57f1deaadb6a2fd873226a31ee"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/apikumo --version")
  end
end
