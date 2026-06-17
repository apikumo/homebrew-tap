class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.3.0/apikumo-darwin-arm64"
      sha256 "180241231c988fad6b48f90c1d8664538d822756451640872240e71eae19610d"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.3.0/apikumo-darwin-x64"
      sha256 "210c76569a0a58447ce77164dc9a51ce43ade78878cd4e8bcc1da11eb755eae7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.3.0/apikumo-linux-x64"
      sha256 "e863a1a8802f4fb10724f1dc82a34e285d78044f38c193b2f277d7bbbcdbde9e"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.3.0/apikumo-linux-arm64"
      sha256 "c918c38f49b88f252f5c35e2e94e851275c0235f68fb1f74f2b3f952029714e2"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/apikumo --version")
  end
end
