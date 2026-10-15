class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.9.5/xbridge-0.9.5-macos.tar.gz"
  sha256 "cb6bc45960794ba78179f84d150f8b9b6ef8b6e806efa037985f3f82bfcc633c"
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
