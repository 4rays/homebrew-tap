class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.9.2/xbridge-0.9.2-macos.tar.gz"
  sha256 "7dae02223857b6af30ad54c8e259df9035ab9fbfab913ad8e2f061f331a7b572"
  license "MIT"

  depends_on :macos

  def install
    bin.install "xbridge"
    bin.install "xbridged"
    bin.install "xbridge-allow"
  end

  test do
    assert_match "xbridge", shell_output("#{bin}/xbridge --help", 1)
  end
end
