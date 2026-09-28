class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.9.3/xbridge-0.9.3-macos.tar.gz"
  sha256 "d72bc63d53e79943f96306e71f268678349d5af27cd625d74fb161fe81db1696"
  license "MIT"

  depends_on :macos

  def install
    bin.install "xbridge"
    bin.install "xbridged"
    bin.install "xbridge-allow"
    pkgshare.install "xbridge-skill.md"
  end

  test do
    assert_match "xbridge", shell_output("#{bin}/xbridge --help", 1)
  end
end
