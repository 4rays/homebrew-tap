class Xhammer < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xhammer"
  url "https://github.com/4rays/xhammer/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/xhammer"
    bin.install ".build/release/xhammerd"
  end

  test do
    assert_match "xhammer", shell_output("#{bin}/xhammer --help", 1)
  end
end
