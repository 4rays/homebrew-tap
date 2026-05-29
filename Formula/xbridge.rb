class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.2.0/xbridge-0.2.0-macos.tar.gz"
  sha256 "0b128515088eb0d8de13756d0a779c6139e034afdb8e43729b4746b42f0a8495"
  version "0.2.0"
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
