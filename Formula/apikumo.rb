class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  url "https://github.com/apikumo/releases/releases/download/v0.1.2/apikumo-0.1.2.tgz"
  sha256 "2ba29ffb6053dcc78741b9ddec8e0eab5fe4f109d239b42c3fd46d4a8a9114ea"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/apikumo --version")
  end
end
