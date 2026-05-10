cask "icli" do
  version "0.1.3"
  sha256 "dbb7e7e6127f9178123a524584bceadb8f7a50076ba3e984f331544d8ace16d7"

  github_token = ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", ENV.fetch("GITHUB_TOKEN", ""))
  asset_url = "https://api.github.com/repos/4rays/icli/releases/assets/416615341?filename=iCLI-#{version}.zip"

  url asset_url,
    header: [
      "Accept: application/octet-stream",
      "Authorization: Bearer #{github_token}",
    ]
  name "iCLI"
  desc "Menu bar companion and CLI for Apple Calendar and Reminders"
  homepage "https://github.com/4rays/icli"

  app "iCLI.app"
  binary "#{appdir}/iCLI.app/Contents/Resources/bin/icli"

  caveats <<~EOS
    iCLI is distributed from a private GitHub release.
    Set HOMEBREW_GITHUB_API_TOKEN or GITHUB_TOKEN to a token with repo access before installing.
  EOS
end
