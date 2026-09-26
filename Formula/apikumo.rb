class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.1/apikumo-darwin-arm64"
      sha256 "74c0d429d5d3cac9ff068e3bd64d3f107b0bf5edd3b2fecfae2545ae15170aeb"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.1/apikumo-darwin-x64"
      sha256 "1661730a31b2140bc718d8fb8adca7f0f8caee185dad52199fbf3c5466f37e76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.1/apikumo-linux-x64"
      sha256 "05e3d1959bb7aac365e030b2fe1fad7aada7b80602d31ca29ff97ce43f5cecf4"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.1/apikumo-linux-arm64"
      sha256 "136f08fc1adc346c139a8e5ccffcb11fdb408ba8cd73fcc375e126ea6c4d00f8"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/apikumo --version")
  end
end
