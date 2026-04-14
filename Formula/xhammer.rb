class Xhammer < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xhammer"
  url "https://github.com/4rays/xhammer/releases/download/v0.1.0/xhammer-0.1.0-macos.tar.gz"
  sha256 "ca21c5b6c3a49d192af34d220b91f7c6a7c4064bf708140fda86e68bf3f2ac8a"
  version "0.1.0"
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
