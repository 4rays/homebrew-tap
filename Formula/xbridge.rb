class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.3.2/xbridge-0.3.2-macos.tar.gz"
  sha256 "fbe80b287610188a0e8bb543a99f905ffa68581dd804c30fbbf60fb759c7432d"
  version "0.3.2"
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
