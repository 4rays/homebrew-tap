class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.3.1/xbridge-0.3.1-macos.tar.gz"
  sha256 "4e309da94e190a89931e1ddb14057e1f8b06c2f6f840a2785d92f19dd595fb68"
  version "0.3.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "xbridge"
    bin.install "xbridged"
  end

  test do
    assert_match "xbridge", shell_output("#{bin}/xbridge --help", 1)
  end
end
