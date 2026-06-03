class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.3.0/xbridge-0.3.0-macos.tar.gz"
  sha256 "53b973d45055855cc5672adb6e22ea669f4f55b3d7d5383b99b1fe905c8e4078"
  version "0.3.0"
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
