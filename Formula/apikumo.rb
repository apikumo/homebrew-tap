class Apikumo < Formula
  desc "Sync your OpenAPI spec with apikumo from the command line"
  homepage "https://apikumo.com"
  url "https://github.com/meandp589/apikumo-releases/releases/download/v0.1.0/apikumo-0.1.0.tgz"
  sha256 "81df9fb6a8769c5be4a8e420999903c9be44f5984028c4df4744293435812fa0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/apikumo --version")
  end
end
