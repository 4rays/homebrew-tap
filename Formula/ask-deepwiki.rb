class AskDeepwiki < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for querying DeepWiki documentation"
  homepage "https://github.com/4rays/ask-deepwiki"
  url "https://files.pythonhosted.org/packages/cc/e6/bfad173b9ee226c440a787cdc7b4fd3c3d6bd82ab09d759125412a468501/ask_deepwiki-0.1.0.tar.gz"
  sha256 "174896de90d089e8009432de9455e9df2cc0f2875e15aff28df094abee5fe91b"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12", system_site_packages: false)
    venv.pip_install "ask-deepwiki==#{version}"
    bin.install_symlink libexec/"bin/ask-deepwiki"
  end

  test do
    assert_match "Query DeepWiki", shell_output("#{bin}/ask-deepwiki --help")
  end
end
