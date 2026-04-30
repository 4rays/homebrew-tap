class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.1.3/xbridge-0.1.3-macos.tar.gz"
  sha256 "33e483ac06f12033200ae22539c202bb040db23535ee3cced1b1ca3cc1eaa7fc"
  version "0.1.3"
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
