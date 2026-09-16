class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.9.0/xbridge-0.9.0-macos.tar.gz"
  sha256 "6ccdd1a194856708626ada7c0e5596d295307f0d4c775c7edbf7809a5f818962"
  version "0.9.0"
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
