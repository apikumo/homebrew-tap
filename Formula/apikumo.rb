class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.15/apikumo-darwin-arm64"
      sha256 "b01e28f79e67ba560c8dd0c77db9265a11525c735fb8af4412e22a688e5de09c"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.15/apikumo-darwin-x64"
      sha256 "acd76c2286a1949fb70791be827c40203337f2b670558270d2be69629619891a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.1.15/apikumo-linux-x64"
      sha256 "9ccda38d56e9daaf424a454fe24845c6ad0816c01297e1f2ee17c8d498c8ad61"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.1.15/apikumo-linux-arm64"
      sha256 "4ebc465751b66ab1814a86a9847aa2dc471134ad0101f562fbb8450ab825ce77"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.1.15", shell_output("#{bin}/apikumo --version")
  end
end
