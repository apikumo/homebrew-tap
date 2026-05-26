class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  url "https://github.com/apikumo/releases/releases/download/v0.1.1/apikumo-0.1.1.tgz"
  sha256 "f3bf2c32acea71c0d31655dd1beea7d69f22258728891dc61c581ec124f1aa15"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/apikumo --version")
  end
end
