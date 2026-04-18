class Xhammer < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xhammer"
  url "https://github.com/4rays/xhammer/releases/download/v0.1.2/xhammer-0.1.2-macos.tar.gz"
  sha256 "c5a03e0dc34f1e2241f93d34f04787ff29a461eb40c3e8deb1b0da429e54834f"
  version "0.1.2"
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
