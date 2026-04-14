class Xhammer < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xhammer"
  url "https://github.com/4rays/xhammer/releases/download/v0.1.1/xhammer-0.1.1-macos.tar.gz"
  sha256 "91229462fec16405f48b4e112fadaccd6762e1e63f5185c6ab35246210fe13ce"
  version "0.1.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "xhammer"
    bin.install "xhammerd"
  end

  test do
    assert_match "xhammer", shell_output("#{bin}/xhammer --help", 1)
  end
end
