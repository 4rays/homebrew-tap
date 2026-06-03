class Xbridge < Formula
  desc "CLI + daemon for Xcode MCP bridge access"
  homepage "https://github.com/4rays/xbridge"
  url "https://github.com/4rays/xbridge/releases/download/v0.2.1/xbridge-0.2.1-macos.tar.gz"
  sha256 "1044137d47ae33c936be0e0d290cc85ce8144baca159f22a1345b095d88d9f8f"
  version "0.2.1"
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
