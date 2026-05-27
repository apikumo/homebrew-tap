class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.7/apikumo-darwin-arm64"
      sha256 "dcf965f151d827b2a82be4d909cf5f44783f76d69eb4c7cecd429a68ed8e644c"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.7/apikumo-darwin-x64"
      sha256 "6af597ab1b3be55dd7f0b25b626bd77239f27d566a24208595b4249013eded4a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.7/apikumo-linux-x64"
      sha256 "687da7202986c57f0c6cc6653dbc00efba6d3762cb51fe331b2aa50d6473764d"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.7/apikumo-linux-arm64"
      sha256 "7382e87463567103e5d255531451be4d451028c7195b7c1fccfdb59c22c60997"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.7", shell_output("#{bin}/apikumo --version")
  end
end
