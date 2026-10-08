class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.9.4/xbridge-0.9.4-macos.tar.gz"
  sha256 "c39be5f7c0de0c0e628c2c15bd45eb87880a7fd206bf7245d18397e5e8b753a3"
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
