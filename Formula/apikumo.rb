class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.0/apikumo-darwin-arm64"
      sha256 "56f080b6520d6c41fc753214d5c4a96fcc594d63da07a6fc648e2c7aee97e273"
    end
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.0/apikumo-darwin-x64"
      sha256 "aa16c65bbf017596ad222bcba9da0c16529a0e081fe34c0e3927f921620b29b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apikumo/releases/releases/download/v0.5.0/apikumo-linux-x64"
      sha256 "85fe66a67c4c5c65c4bd2800073172ef6f9913ef71a1f656e17855c475bd3dd7"
    end
    on_arm do
      url "https://github.com/apikumo/releases/releases/download/v0.5.0/apikumo-linux-arm64"
      sha256 "caffc6372084cf93bca6def848ebd6e4745d787c753dfff8d66f68ed11365b86"
    end
  end

  def install
    binary = Dir["apikumo-*"].first
    bin.install binary => "apikumo"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/apikumo --version")
  end
end
