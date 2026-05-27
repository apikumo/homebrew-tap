class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.14/apikumo-darwin-arm64"
      sha256 "8d7fb9592be85facfa6d0c46349d3cf46d6730637987b5d5f6675845d408154f"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.14/apikumo-darwin-x64"
      sha256 "3e3e2a40a476471f0dee5afcacc4fbe98908b33c4ca84f18096019531499810b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.14/apikumo-linux-x64"
      sha256 "1bc4dd9ad341740f87c79e61db50fa0b36fbe6e7d32525cc0c7db855947d4013"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.14/apikumo-linux-arm64"
      sha256 "a7914c351a1c785bf68368151fc248e8f16cce87f3f63936739b0205b44942f1"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.14", shell_output("#{bin}/apikumo --version")
  end
end
