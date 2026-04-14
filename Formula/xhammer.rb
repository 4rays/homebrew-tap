class Xhammer < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xhammer"
  url "https://github.com/4rays/xhammer/releases/download/v0.1.1/xhammer-0.1.1-macos.tar.gz"
  sha256 "947d1372914d72f72a609240be286230a079e9aee84a862ba1cbb98e49d41cbb"
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
