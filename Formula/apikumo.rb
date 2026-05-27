class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.12/apikumo-darwin-arm64"
      sha256 "b2b62eacd4b1cfc574633de4baaabb2eeb3e2df5666e9702add75f8903e19934"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.12/apikumo-darwin-x64"
      sha256 "741778c9dff7e5117a68d2d8af9cdddf2eae6025d56e0275adccb4e05621bcdb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.12/apikumo-linux-x64"
      sha256 "561bcb92e8e5c78d87821bfd135712b8cf06b22e5d322fa7f47381382af22a60"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.12/apikumo-linux-arm64"
      sha256 "f2a588959def7f2663a3e9cb42c9844e3be8ceaf501e7bbbc4de20210adf352b"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.12", shell_output("#{bin}/apikumo --version")
  end
end
